// License: Apache 2.0. See LICENSE file in root directory.
// Copyright(c) 2015-2017 Intel Corporation. All Rights Reserved.

#include <librealsense2/rs.hpp> // Include RealSense Cross Platform API
#include "example.hpp"          // Include short list of convenience functions for rendering

#include <algorithm>            // std::min, std::max

#include <lcm/lcm-cpp.hpp>
#include "../../../lcm-types/cpp/rs_pointcloud_t.hpp" // ask if this makes sense
#include "../../../lcm-types/cpp/lidar_pose_t.hpp"
#include "../../../lcm-types/cpp/heightmap_t.hpp"
#include <iostream>
#include <thread> 
#include <type_traits>
#include <cmath>

// My code

int WORLD_SIZE = 10;
int CELLS_PER_M = 100;

struct worldmap_t
{
    double map[1000][1000];
};


struct rotMat_t
{
    double R[3][3];
};

rotMat_t poseToRotationMatrix(lidar_pose_t pose){
	double e0 = pose.lidar_quaternion[0];
	double e1 = pose.lidar_quaternion[1];
	double e2 = pose.lidar_quaternion[2];
	double e3 = pose.lidar_quaternion[3];
	rotMat_t rotMat;

	rotMat.R[0][0] = 1-2*(e2*e2 + e3*e3);
	rotMat.R[1][0] = 2*(e1*e2 - e0*e3);
	rotMat.R[2][0] = 2*(e1*e3 + e0*e2);

	rotMat.R[0][1] = 2*(e1*e2 + e0*e3);
	rotMat.R[1][1] = 1-2*(e1*e1 + e3*e3);
	rotMat.R[2][1] = 2*(e2*e3 - e0*e1);

	rotMat.R[0][2] = 2*(e1*e3 - e0*e2);
	rotMat.R[1][2] = 2*(e2*e3 + e0*e1);
	rotMat.R[2][2] = 1-2*(e1*e1 + e3*e3);

	return rotMat;
}

rs_pointcloud_t coordinateTransformation(lidar_pose_t pose, rs_pointcloud_t cameraFrameCloud)
{
	rotMat_t rotationMatrix = poseToRotationMatrix(pose);
	int r1 = 3, c1=3, r2 = 3, c2 = 921;
	rs_pointcloud_t worldFrameCloud;
	for (int i=0; i<r1; i++){
		for (int j=0; j<c2; j++){
			worldFrameCloud.pointlist[i][j] = pose.p_lidar[i];
			for(int k=0; k<c1; k++){
				worldFrameCloud.pointlist[i][j] += rotationMatrix.R[i][k]*cameraFrameCloud.pointlist[k][j];
			}
		}
	}
	return worldFrameCloud;
}


worldmap_t world_heightmap;
lidar_pose_t lidar_pose;
lcm::LCM vision_lcm;

class PoseHandler
{
    public:
        ~PoseHandler() {}
	
	void handlePose(const lcm::ReceiveBuffer* rbuf, 
			const std::string& chan, 
			const lidar_pose_t* msg)
	{
		lidar_pose = *msg;
		//std::cout<<"receive lidar"<<std::endl;
	}
};



void handleLCM() {
  
  while (true)
  { 
	
	vision_lcm.handle();
  };

}
// My code - End

int main(int argc, char * argv[]) try
{

    // Declare pointcloud object, for calculating pointclouds and texture mappings
    rs2::pointcloud pc;
    // We want the points object to be persistent so we can display the last cloud when a frame drops
    rs2::points points;

    // Declare RealSense pipeline, encapsulating the actual device and sensors
    rs2::pipeline pipe;
    // Start streaming with default recommended configuration
    pipe.start();

    // My code 
    
    
    PoseHandler handlerObject; 
    vision_lcm.subscribe("LIDAR_POSE", &PoseHandler::handlePose, &handlerObject);
    std::thread lidar_sub_thread(&handleLCM);
    
    // My code - End


    while (true)
    {
        // Wait for the next set of frames from the camera
        auto frames = pipe.wait_for_frames();

        auto depth = frames.get_depth_frame();

        // Generate the pointcloud and texture mappings
        points = pc.calculate(depth);

	// My Code - publish pointcloud
	rs_pointcloud_t cf_pointcloud; // 921600
	rs_pointcloud_t wf_pointcloud; 
	heightmap_t local_heightmap;
	//std::cout<<points.size()<< std::endl;

	int num_points = points.size();

	auto vertices = points.get_vertices(); 

	// Move raw image into camera frame point cloud struct
	for (int i = 0; i < num_points/1000; i++)
	{
    		if (vertices[i*1000].z)
    		{
			cf_pointcloud.pointlist[i][0] = vertices[i*1000].z;
			cf_pointcloud.pointlist[i][1] = -vertices[i*1000].x;
			cf_pointcloud.pointlist[i][2] = vertices[i*1000].y;
    		}
		else
		{
			cf_pointcloud.pointlist[i][0] = 10000; // move null depth returns way off map so they get ignored
			cf_pointcloud.pointlist[i][1] = 10000;
			cf_pointcloud.pointlist[i][2] = 10000;
		}
	}


	// Publish point cloud in camera and world frames
	vision_lcm.publish("cf_pointcloud", &cf_pointcloud);
	//std::cout<<"publish rs"<<std::endl;
	
	std::cout<<lidar_pose.p_lidar[0]<<std::endl;
	//std::cout<<poseToRotationMatrix(lidar_pose).R[0][0]<<std::endl;

	wf_pointcloud = coordinateTransformation(lidar_pose, cf_pointcloud);
	vision_lcm.publish("wf_pointcloud", &wf_pointcloud);


	// Move world frame point cloud into world heightmap
	for (int i = 0; i < num_points/1000; i++)
	{
		int point_x_ind = wf_pointcloud.pointlist[i][0]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1;
		int point_y_ind = wf_pointcloud.pointlist[i][1]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1;
		if (point_x_ind >= 0 && point_x_ind < WORLD_SIZE*CELLS_PER_M && point_y_ind >= 0 && point_y_ind < WORLD_SIZE*CELLS_PER_M)
		{			
			if (world_heightmap.map[point_x_ind][point_y_ind] < wf_pointcloud.pointlist[i][2])
			{
				world_heightmap.map[point_x_ind][point_y_ind] = wf_pointcloud.pointlist[i][2];
			}
		}
	}

	//Copy out local heightmap
	// 		calculate index of center of local map in world map
	int pose_x_ind = lidar_pose.p_lidar[0]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1; 
	int pose_y_ind = lidar_pose.p_lidar[1]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1;

	for (int i = 0; i < CELLS_PER_M; i++)
	{
		for (int j = 0; j < CELLS_PER_M; j++)
		{		
			int world_map_x_ind = pose_x_ind+i-CELLS_PER_M/2;
			int world_map_y_ind = pose_y_ind+j-CELLS_PER_M/2;
			if (world_map_x_ind >= 0 && world_map_x_ind < WORLD_SIZE*CELLS_PER_M && 
				world_map_y_ind >= 0 && world_map_y_ind < WORLD_SIZE*CELLS_PER_M)
			{
				local_heightmap.map[i][j] = world_heightmap.map[world_map_x_ind][world_map_y_ind];
			}			
		}
	}

	vision_lcm.publish("local_heightmap", &local_heightmap);
	

	// My Code - End

    }

    return EXIT_SUCCESS;
}
catch (const rs2::error & e)
{
    std::cerr << "RealSense error calling " << e.get_failed_function() << "(" << e.get_failed_args() << "):\n    " << e.what() << std::endl;
    return EXIT_FAILURE;
}
catch (const std::exception & e)
{
    std::cerr << e.what() << std::endl;
    return EXIT_FAILURE;
}
