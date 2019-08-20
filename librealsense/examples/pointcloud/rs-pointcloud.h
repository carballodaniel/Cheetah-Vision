// My code
#include <lcm/lcm-cpp.hpp>


struct worldmap
{
    double map[1000][1000];
};

struct rotMat_t
{
    double R[3][3];
};
/*
std::string getLcmUrl(s64 ttl) {
	assert(ttl >=0 && ttl<255);
	return "udpm://239.255.76.67:7667?ttl=" + std::to_string(ttl);
}
*/
int WORLD_SIZE = 10;
int CELLS_PER_M = 100;
xyzq_pose_t lidar_pose;
lcm::LCM vision_lcm("udpm://239.255.76.67:7667?ttl=255");


xyzq_pose_t poseFromRPY(double x, double y, double z, 
							double yaw, double pitch, double roll) // yaw (Z), pitch (Y), roll (X)
{
    // Abbreviations for the various angular functions
    double cy = cos(yaw * 0.5);
    double sy = sin(yaw * 0.5);
    double cp = cos(pitch * 0.5);
    double sp = sin(pitch * 0.5);
    double cr = cos(roll * 0.5);
    double sr = sin(roll * 0.5);

    xyzq_pose_t pose;
	pose.xyz[0] = x;
	pose.xyz[1] = y;
	pose.xyz[2] = z;

    pose.wxyz_quaternion[0] = cy * cp * cr + sy * sp * sr;
    pose.wxyz_quaternion[1] = cy * cp * sr - sy * sp * cr;
    pose.wxyz_quaternion[2] = sy * cp * sr + cy * sp * cr;
    pose.wxyz_quaternion[3] = sy * cp * cr - cy * sp * sr;

    return pose;
}


rotMat_t poseToRotationMatrix(xyzq_pose_t pose){
	double e0 = pose.wxyz_quaternion[0]; // w x y z
	double e1 = pose.wxyz_quaternion[1];
	double e2 = pose.wxyz_quaternion[2];
	double e3 = pose.wxyz_quaternion[3];
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

rs_pointcloud_t coordinateTransformation(xyzq_pose_t pose, rs_pointcloud_t cameraFrameCloud)
{
	rotMat_t rotationMatrix = poseToRotationMatrix(pose);
	int r1 = 3, c1=3, r2 = 3, c2 = 921;
	rs_pointcloud_t worldFrameCloud;
	for (int i=0; i<r1; i++){
		for (int j=0; j<c2; j++){
			worldFrameCloud.pointlist[i][j] = pose.xyz[i];
			for(int k=0; k<c1; k++){
				worldFrameCloud.pointlist[i][j] += rotationMatrix.R[i][k]*cameraFrameCloud.pointlist[k][j];
			}
		}
	}
	return worldFrameCloud;
}

void extractLocalFromWorldHeightmap(xyzq_pose_t* lidar_pose_ptr, worldmap* worldmap_ptr, heightmap_t* local_heightmap_ptr)
{
	//Copy out local heightmap
	// 		calculate index of center of local map in world map
	int pose_x_ind = (*lidar_pose_ptr).xyz[0]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1; 
	int pose_y_ind = (*lidar_pose_ptr).xyz[1]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1;

	for (int i = 0; i < CELLS_PER_M; i++)
	{
		for (int j = 0; j < CELLS_PER_M; j++)
		{		
			int world_map_x_ind = pose_x_ind+i-CELLS_PER_M/2;
			int world_map_y_ind = pose_y_ind+j-CELLS_PER_M/2;
			if (world_map_x_ind >= 0 && world_map_x_ind < WORLD_SIZE*CELLS_PER_M && 
				world_map_y_ind >= 0 && world_map_y_ind < WORLD_SIZE*CELLS_PER_M)
			{
				(*local_heightmap_ptr).map[i][j] = (*worldmap_ptr).map[world_map_x_ind][world_map_y_ind];
			}			
		}
	}
}

void wfPCtoHeightmap(rs_pointcloud_t* wf_pointcloud_ptr, worldmap* world_heightmap_ptr, int num_points){
		// Move world frame point cloud into world heightmap
		for (int i = 0; i < num_points/1000; i++)
		{
			int point_x_ind = (*wf_pointcloud_ptr).pointlist[i][0]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1;
			int point_y_ind = (*wf_pointcloud_ptr).pointlist[i][1]*CELLS_PER_M + WORLD_SIZE*CELLS_PER_M/2 -1;
			if (point_x_ind >= 0 && point_x_ind < WORLD_SIZE*CELLS_PER_M && point_y_ind >= 0 && point_y_ind < WORLD_SIZE*CELLS_PER_M)
			{			
				if ((*world_heightmap_ptr).map[point_x_ind][point_y_ind] < (*wf_pointcloud_ptr).pointlist[i][2])
				{
					(*world_heightmap_ptr).map[point_x_ind][point_y_ind] = (*wf_pointcloud_ptr).pointlist[i][2];
				}
			}
		}
}

class PoseHandler
{
    public:
        ~PoseHandler() {}
	
	void handlePose(const lcm::ReceiveBuffer* rbuf, 
			const std::string& chan, 
			const xyzq_pose_t* msg)
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

