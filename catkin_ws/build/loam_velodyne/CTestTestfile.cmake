# CMake generated Testfile for 
# Source directory: /home/nvidia/catkin_ws/src/loam_velodyne
# Build directory: /home/nvidia/catkin_ws/build/loam_velodyne
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_loam_velodyne_rostest_test_loam.test "/home/nvidia/catkin_ws/build/catkin_generated/env_cached.sh" "/usr/bin/python2" "/opt/ros/melodic/share/catkin/cmake/test/run_tests.py" "/home/nvidia/catkin_ws/build/test_results/loam_velodyne/rostest-test_loam.xml" "--return-code" "/opt/ros/melodic/share/rostest/cmake/../../../bin/rostest --pkgdir=/home/nvidia/catkin_ws/src/loam_velodyne --package=loam_velodyne --results-filename test_loam.xml --results-base-dir \"/home/nvidia/catkin_ws/build/test_results\" /home/nvidia/catkin_ws/build/loam_velodyne/test/loam.test ")
set_tests_properties(_ctest_loam_velodyne_rostest_test_loam.test PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/melodic/share/catkin/cmake/test/tests.cmake;143;add_test;/opt/ros/melodic/share/rostest/cmake/rostest-extras.cmake;52;catkin_run_tests_target;/home/nvidia/catkin_ws/src/loam_velodyne/CMakeLists.txt;66;add_rostest;/home/nvidia/catkin_ws/src/loam_velodyne/CMakeLists.txt;0;")
subdirs("src/lib")
