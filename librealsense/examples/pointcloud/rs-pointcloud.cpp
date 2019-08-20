// License: Apache 2.0. See LICENSE file in root directory.
// Copyright(c) 2015-2017 Intel Corporation. All Rights Reserved.

#include <librealsense2/rs.hpp> // Include RealSense Cross Platform API
#include "example.hpp"          // Include short list of convenience functions for rendering

#include <algorithm>            // std::min, std::max


#include "../../../lcm-types/cpp/rs_pointcloud_t.hpp" // ask if this makes sense
#include "../../../lcm-types/cpp/xyzq_pose_t.hpp"
#include "../../../lcm-types/cpp/heightmap_t.hpp"
#include <iostream>
#include <thread> 
#include <type_traits>
#include <cmath>
#include "rs-pointcloud.h"


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

	xyzq_pose_t lidar_to_camera_TF = poseFromRPY(0.28, 0.0, -0.124, 0.0, -0.417, 0.0);
    
	heightmap_t local_heightmap;
	worldmap world_heightmap;
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
		rs_pointcloud_t lf_pointcloud;
		
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
		//vision_lcm.publish("cf_pointcloud", &cf_pointcloud);
		
		std::cout<<lidar_pose.xyz[0]<<std::endl;
		
		lf_pointcloud = coordinateTransformation(lidar_to_camera_TF, cf_pointcloud);
		wf_pointcloud = coordinateTransformation(lidar_pose, lf_pointcloud);
		//vision_lcm.publish("wf_pointcloud", &wf_pointcloud);


		wfPCtoHeightmap(&wf_pointcloud, &world_heightmap, num_points);

		extractLocalFromWorldHeightmap(&lidar_pose, &world_heightmap, &local_heightmap); // writes over local heightmap in place
		
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
