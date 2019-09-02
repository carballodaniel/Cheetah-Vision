cd Downloads/
ls
realsense-viewer
/bin/sh cmake-3.14.5-Linux-x86_64.sh 
ls
cmake
ccmake
ls
./bootstrap
rm -rf *
ls
tar -xzf cmake-3.14.5.tar.gz 
ls
cd cmake-3.14.5/
ls
vim README.rst 
sudo systemctl stop dnsmasq.service masq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -xe
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
journalctl -fu dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
ip addr flush dev eth0
ip addr show dev eth0
sudo ip addr add 10.0.0.5/24 dev eth0\
sudo ip addr add 10.0.0.5/24 dev eth0
sudo ip link set eth0 up
ip addr show dev eth0
sudo dnsmasq -C /dev/null -kd -F 10.5.5.50,10.5.5.100 -i enp6s0f1 --bind-dynamic
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
ip addr flush dev eth0
sudo ip addr flush dev eth0
ip addr show dev eth0
sudo ip addr add 192.168.1.59/24 dev eth0
sudo ip link set eth0 up
sudo dnsmasq -C /dev/null -kd -F 192.168.1.1,192.168.1.150 -i eth0 --bind-dynamic
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo ip link set eth0 up
sudo dnsmasq -C /dev/null -kd -F 192.168.1.1,192.168.1.150 -i eth0 --bind-dynamic
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo ip addr flush dev eth0
sudo dnsmasq -C /dev/null -kd -F 192.168.1.50,192.168.1.150 -i eth0 --bind-dynamic
sudo dnsmasq -C /dev/null -kd -F 192.168.1.50,192.168.1.150 -i eth0 --bind-dynamic\
sudo dnsmasq -C /dev/null -kd -F 192.168.1.50,192.168.1.150 -i eth0 --bind-dynamic
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
ping 192.168.1.60
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
ping 192.168.1.148
ping 192.168.1.60
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
ping 192.168.1.150
ping 192.168.1.148
df -h
du -d 1
cd Downloads/
ls
du -d 1
realsense-viewer 
rosversion
rosverion ros
roscore
sudo apt-get install ros-kinetic-pcl-ros
sudo apt-get install ros-melodic-pcl-ros
sudo apt-get install ros-melodic-tf2-geometry-msgs
sudo apt-get install ros-melodic-rviz
source /opt/ros/melodic/setup.bash
git clone https://github.com/ouster-lidar/ouster_example.git
ls
cd ouster_example/
ls
cd ..
mkdir -p myworkspace/src && cd myworkspace && ln -s . ./src/
ln -s ../ouster_example ./src/
catkin_make -DCMAKE_BUILD_TYPE=Release
ls
source /devel/setup.bash
cd devel
ls
source setup.bash
cd
if config
ifconfig
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
cd Downloads/ouster_build/
ls
cd devel
ls
gedit setup.bash
ls
source setup.bash
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
rospack find os1
sourcd
cd
cd Downloads/
ls
rm -rf ouster_build/
cd ouster_example/
ls
cd ouster_ros
l
cd..
cd ..
mkdir -p ouster_ros_build/src && cd ouster_ros_build && ln -s ../ouster_ros ./src/
catkin_make -DCMAKE_BUILD_TYPE
catkin_make -DCMAKE_BUILD_TYPE=Release
ld
ls
source devel/setup.bash
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
rospack find os1
mkdir -p ouster_ros_build/src && cd ouster_ros_build && ln -s ../ouster_ros ./src/cd
cd
cd Downloads/
ls
rm -rf ousteros-image-prod-aries-v1.12.0-20190502211317.img 
cd ouster_example/
ls
rm -rf ouster_ros_build
cd
source /opt/ros/melodic/setup.bash
mkdir -p catkin_ws/src && cd catkin_ws
ln -s ../Downloads/ouster_example ./src/ && catkin_make -DCMAKE_BUILD_TYPE=Release
ls
source devel/setup.bash
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
sudo apt-get install libvtk6-dev libeigen3-dev
cd
cd Downloads/
ls
cd /ouster_example/ouster_viz && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make
cd ouster_example/ouster_viz && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make
./viz
./viz os1-991910000511 192.168.1.1
cd ..
cd ouster_example/ouster_ros && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make
cd ..
cd ouster_example/ouster_ros && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make
cd ..
cd ouster_example/ouster_client && mkdir build && cd build && cmake .. && make
ls
ouster_client_example os1-991910000511 192.168.1.1
./ouster_client_example os1-991910000511 192.168.1.1
cd .. 
cd ..
cd ouster_example/ouster_ros && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make
ls
rm -rf build
cd ..
cd ouster_example/ouster_ros && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make
cd ..
cd ouster_example/ouster_ros && mkdir build && cd build && cmake -DCMAKE_BUILD_TYPE=Release .. && make
cd
ls
cd catkin_ws/
ls
cd src
ls
cd
rm -rf catkin_ws/
mkdir -p catkin_ws/src
cd catkin_ws/

catkin_make -DCMAKE_BUILD_TYPE=Release
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
cd
cd catkin_ws/
cd ../Downloads/ouster_example
cd ouster_ros 
l
cdcd
cd
ls
cd catkin_ws/
lls
ls
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
cd
rm -rf catkin_ws/
ls
mkdir -p catkin_ws/src && cd catkin_ws
ln -s ../Downloads/ouster_example ./src/ && catkin_make -DCMAKE_BUILD_TYPE=Release
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
make
ln -s ../Downloads/ouster_example ./src/ && catkin_make -DCMAKE_BUILD_TYPE=Release .. && make
..
catkin_make -DCMAKE_BUILD_TYPE=Release .. && make
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
cd
rm -rf
ls
rm -rf catkin_ws/
mkdir -p catkin_ws/src && cd catkin_ws
ln -s ../Downloads/ouster_example/ouster_ros ./src/ && catkin_make -DCMAKE_BUILD_TYPE=Release .. && make
cd
cd Downloads/
cd ouster_example/
ls
cd ouster_ros
ls
cd src
ls
cd
cd catkin_ws/
ls
cd src
ls
cd ouster_ros
cd
rm -rf catkin_ws/
l
mkdir -p catkin_ws/src && cd catkin_ws
ln -s ../Downloads/ouster_example/ouster_ros ./src/ && catkin_make -DCMAKE_BUILD_TYPE=Release .. && make
ln -s ../Downloads/ouster_example/ouster_ros ./src/ 
cd src
ls
cd
Downloads/
ls
cd Downloads/
ls
cd ouster
ls
cd ouster_example/
ls
cd ouster_ros/
ls
cd .. 
cp /ouster_ros ~/catkin_ws/src
cp ouster_ros ~/catkin_ws/src
cd
cd catkin_ws/
catkin_make -DCMAKE_BUILD_TYPE=Release 
cd src
ls
gedit CMakeLists.txt 
cd
cd catkin_ws/
catkin_make -DCMAKE_BUILD_TYPE=Release ..
catkin_make -DCMAKE_BUILD_TYPE=Release ./Downloads/ouster_example
catkin_make -DCMAKE_BUILD_TYPE=Release ./Downloads/ouster_example/ouster_client
find ouster_client*
cd
find ouster_client*
cd catkin_ws/
catkin_make -DCMAKE_BUILD_TYPE=Release ./Downloads/ouster_example/ouster_client/build
ls
cd src
ls
gedit CMakeLists.txt 
cd ouster_ros/
ls
gedit CMakeLists.txt 
cd
ls
cd catkin_ws/
ls
source devel/setup.bash 
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
source catkin_ws/devel/setup.bash 
find roscpp

cd /opt
ls
cd ro
cd ros
ls
cd melodic
ls
cd bin
ls
cd .. 
cd lib
ls
cd ..
ls
cd etc
ls
cd ros
ls
cd ..
cd catkin/
ls
cd ..
find tf
cd ..
find tf2
find tf
cd
rm -rf catkin_ws/
mkdir -p catkin_ws/src && cd catkin_ws && ln -sr ../Downloads/ouster_example ./src/ 
ls
cd src
ls
cd ouster_example
ls
cd ..
cd..
cd ..
catkin_make -DCMAKE_BUILD_TYPE=Release
ls
./bootstrap && make && sudo make install
cmake
cd ..
cmake
du -d 1
git clone https://github.com/IntelRealSense/librealsense.git
sudo apt-get install git libssl-dev libusb-1.0-0-dev pkg-config libgtk-3-dev
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev
ls
cd librealsense/
./scripts/setup_udev_rules.sh
./scripts/patch-realsense-ubuntu-lts.sh
mkdir build && cd build
cmake ../
sudo make uninstall && make clean && make && sudo make install
df -h
realsense-viewer
ls
cd examples
ls
cd hello-realsense/
ls
./rs-hello-realsense 
cd ..
ls
cd po
cd pointcloud/
ls
./rs-pointcloud 
cd
cd Downloads/
ls
unzip lcm-1.4.0.zip
cd lcm-1.4.0/
./configure
ls
sudo apt-get install build-essential
sudo apt-get install libglib2.0-dev
ls
vim README.md 
vim format_code.sh 
make
cd..
ls
cd ..
ls
rm -rf lcm*
ls
git clone https://github.com/lcm-proj/lcm lcm
cd lcm
./bootstrap.sh
ls
cd lcm
ls
cd ..
ls
cd
cd Downloads/
ls
rm -rf lcm
ls
cd
sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654
sudo apt update
df -h
sudo apt install ros-melodic-desktop-full
sudo rosdep init
rosdep update
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
source ~/.bashrc
sudo apt install python-rosinstall python-rosinstall-generator python-wstool build-essential
cd /usr/bin
ls
~jetson_clocks
./jetson_clocks
sudo ./jetson_clocks 
cd
ifconfig
ping 192.168.55.1
ip link
sudo apt install dnsmasq
ip link
sudo nano /etc/dnsmasq.conf 
sudo gedit /etc/dnsmasq.conf 
sudo apt install tmux
cd
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
cd catkin_ws
ls
cd devel
ls
cd ..
cd src/
ls
gedit ~/etc/bash.rc
gedit ~/bash.rc
gedit ~/.bash.rc
gedit ~./bash.rc
ls
cd
gedit ~/.bashrc
sudo ./jetson_clocks 
sudo ~./jetson_clocks 
sudo ~/.jetson_clocks 
sudo ./jetson_clocks.sh
cd usr/bin
cd /usr/bin
./jetson_clocks
sudo ./jetson_clocks
cd
echo " ./usr/bin/jetson_clocks" >> ~/.bashrc
rostopic list
rosrun tf view_frames
rosecho initialpose
rostopic echo initialpose
rostopic echo aft_mapped_to_init
rostopic echo os1_cloud_node
rostopic echo os1_cloud_node/imu
rostopic info
rostopic list 
rostopic info /velodyne_cloud_2
rostopic info /initialpose
rostopic info /tf
rostopic info /tf_static
rosrun rqt_tf_tree rqt_tf_tree
cd catkin_ws/src/loam_velodyne/
ls
cd include/
ls
cd loam_velodyne/
ls
gedit MultiScanRegistration.h 
gedit BasicScanRegistration.h 
gedit ScanRegistration.h 
cd ..
ls
cd src
ls
cd lib/
ls
gedit MultiScanRegistration.cpp 
rostopic list
rostopic tf
tf list
cd ..
ls
cd src
ls
cd la
cd loam_velodyne/
ls
cd launch/
ls
gedit loam_velodyne.launch 
cd
cd catkin_ws/
catkin_make -DCMAKE_BUILD_TYPE=Release
cd devel
ls
source setup.bash 
cd ..
cd src/
ls
cd loam_velodyne/
ls
cd launch/
gedit loam_velodyne.launch 
cd 
cd catkin_ws/
catkin_make -DCMAKE_BUILD_TYPE=Release
cd devel/
source setup.bash 
source ~/catkin/devel/setup.bash
source /catkin/devel/setup.bash
source catkin/devel/setup.bash
source catkin_ws/devel/setup.bash
cd
roslaunch loam_velodyne loam_velodyne.launch
sudo su
sudo /jetson_clocks.sh --show
sudo ./jetson_clocks.sh --show
sudo ./jetson_clocks --show
sudo /.jetson_clocks --show
sudo /.jetson_clocks.sh --show
ls
cd usr/bin
cd /usr/bin
sudo /jetson_clocks.sh --show
ls
sudo /jetson_clocks.sh
sudo /jetson_clocks
sudo ./jetson_clocks
sudo ./jetson_clocks --show
cd
cd /sys/devices/system/cpu
ls
cd cpu4
ls
gedit online
cd
roslaunch loam_velodyne loam_velodyne.launch
roslaunch hector_loam_velodyne hector_loam_velodyne.launch
roslaunch loam_velodyne hector_loam_velodyne.launch
cd catkin_ws/
ls
cd src
ls
cd loam_velodyne/
ls
cd launch/
ls
gedit loam_velodyne.launch 
cd
roslaunch loam_velodyne loam_velodyne.launch
ls
cd catkin_ws
ls
cd src
ls
cd loam_velodyne/
ls
cd src
ls
cd lib
ls
gedit MultiScanRegistration.cpp 
cd ..
l
cd ,,
cd ..
ls
cd include/
ls
cd loam_velodyne/
ls
gedit MultiScanRegistration.h 
ls
gedit BasicScanRegistration.h 
gedit ScanRegistration.h 
cd
cd catkin_ws/
ls
catkin_make -DCMAKE_BUILD_TYPE=Release
source ~/devel/setup.bash
source /devel/setup.bash
source devel/setup.bash
cd
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64
roslaunch loam_velodyne loam_velodyne.launch lidar:= OS1-64
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64
roslaunch loam_velodyne loam_velodyne.launch lidar:=HDL-32
roslaunch loam_velodyne loam_velodyne.launch lidar:="HDL-32"
roslaunch loam_velodyne loam_velodyne.launch lidar:=blah
roslaunch loam_velodyne loam_velodyne.launch aial;df;
roslaunch loam_velodyne loam_velodyne.launch aialdf
roslaunch loam_velodyne loam_velodyne.launch lidir
roslaunch loam_velodyne loam_velodyne.launch lidar
roslaunch loam_velodyne loam_velodyne.launch lidar:=4
roslaunch loam_velodyne loam_velodyne.launch lidar:=
roslaunch loam_velodyne loam_velodyne.launch scanPeriod:=0.05
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64 scanPeriod:=0.05
ls
cd catkin_ws/
ls
cd src
ls
git clone https://github.com/laboshinl/loam_velodyne.git
ls
cd ~/catkin_ws
catkin_make -DCMAKE_BUILD_TYPE=Release
ls
source /devel/setup.bash
cd devel/
ls
source setup.bash 
roslaunch loam_velodyne loam_velodyne.launch 
echo "source /opt/ros/melodic/setup.bash" >> ~/.bashrc
gedit ~/.bashrc
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=false
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
cd
sudo gedit /etc/dnsmasq.conf 
sudo systemctl start dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -xe
sudo gedit /etc/dnsmasq.conf 
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
tmux
history
lcm
lcm --version
lcm-mon
git clone https://github.com/lcm-proj/lcm lcm
cd lcm
./bootstrap.sh
ls
cd lcm
ls
cd ..
cd docs
ls
cd .. 
ls
cd lcm-cmake/
ls
cd .. 
cd
ls
rm -rf lcm
ls
gedit ~.bashrc
gedit ~/.bashrc
cd Downloads/
ls
unzip lcm-1.4.0.zip 
cd lcm-1.4.0/
./configure
ls
cd lcm
ls
cd ..
~/.configure
~./configure
mkdir build && cd build
cmake ..
make
cd
export LCM_INSTALL_DIR=/usr/local/lib
echo $LCM_INSTALL_DIR > /etc/ld.so.conf.d/lcm.conf
sudo echo $LCM_INSTALL_DIR > /etc/ld.so.conf.d/lcm.conf
rostopic list
cd /usr/bin
gedit ./bashrc
./jetson_clocks
sudo ./jetson_clocks
lsblk
df -h
hwinfo
hwinfo --block --short
sudo dd if=/dev/root of=/dev/sda1
cd
sudo dd if=/dev/root of=/dev/sda1
cd dev
cd /dev
sudo dd if=/dev/root of=/dev/sda1
ls
cd root
cd /root
sudo cd /root
cdcd
cd
sudo dd if=/dev/root of=/dev/sda1
df -h
cd ~/dev/root
readlink -f /dev/root
lsblk
sudo dd if=/dev/mmcblk0 of=/dev/sda1
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64 scanPeriod:=0.05
cd catkin_ws/src/loam_velodyne/
ls
cd launch/
ls
vim loam_velodyne.launch 
rostopic list
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64 scanPeriod:=0.05
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
ifconfig
ip link show eth0
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
ifconfig
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
ping google.com
roscd beginner_tutorials
ls
cd catkin_ws/
ls
cd src
ls
gedit CMakeLists.txt 
gedit loam_republiser.cpp
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64 scanPeriod:=0.05
sudo ./jetson_clocks
cd /usr/bin
sudo ./jetson_clocks
cd
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64 scanPeriod:=0.05
sudo apt install openjdk-8-jdk
sudo apt install python-dev
cd Do
cd Downloads/
ls
cd lcm-1.4.0/
ls
cd ..
ls
rm -rf lcm-1.4*
ls
rm -rf lcm-1.3.1.zip
ls
rm -rf autoconf-latest.tar.gz 
ls
cd
ls
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64 scanPeriod:=0.05
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
cd catkin_ws/src/
ls
gedit loam_
gedit loam_republiser.cpp 
echo $LCM_INSTALL_DIR
cd
sudo apt-get install build-essential
sudo apt-get install libglib2.0-dev
sudo apt-get install openjdk-6-jdk
sudo apt-get install openjdk-6
sudo apt-get install python-dev
sudo apt autoremove
sudo apt-get autoconf
cd Downloads/
ls
rm -rf autoconf-2*
ls
tar -xvzf autoconf-latest.tar.gz
ls
cd autoconf-2.69/
ls
./configure 
make
make install
make check
sudo apt update 
cd ..
ls
cd lcm-1.4.0/
ls
cd ..
ls
unzip lcm-1.3.1.zip
cd lcm-1.3.1/
ls
./configure
make
sudo make install
sudo ldconfig
lcm-spy
cd ..
ls
cd lcm-1.3.1/
ls
cd lcm
ls
gedit lcm-cpp.hpp
cd
ls
git clone https://github.com/mit-biomimetics/Cheetah-Software.git
ls
cd Cheetah-Software/
ls
mkdir build
cd build
cmake ..
cd 
ls
rm -rf Cheetah-Software/
ls
git clone https://github.com/mit-biomimetics/Cheetah-Software.git
cd Cheetah-Software/
ls
cd lcm-types
ls
cd ..
mv lcm-types/ ..
ls
cd ..
ls
cd Cheetah-Software/
ls
mv scripts/ ..
ls
cd
ls
rm -rf Cheetah-Software/
ls
cd scripts/
ls
./make_types.sh
cd
ls\
cd catkin_ws/
ls
cd src/
ls
rm -rf loam_
ls
rm -rf loam_republiser.cpp 
ls
cd loam_velodyne/
ls
cd src
ls
cd
ks
ls
cd lcm-types/
ls
cd cpp
ls
cd
cd catkin_ws/
ls
cd src
ls
gedit CMakeLists.txt 
sudo gedit CMakeLists.txt 
ls
cd loam_velodyne/
ls
sudo gedit CMakeLists.txt 
ls
cd src
ls
cd lib
sudo gedit TransformMaintenance.cpp 
cd
cd catkin_ws/
ls
catkin_make -DCMAKE_BUILD_TYPE=Release
cd
cd catkin_ws/
ls
cd src
ls
cd loam_velodyne/
ls
cd src
ls
cd lib
ls
sudo gedit TransformMaintenance.cpp 
cd ..
ls
cd lib
sudo gedit TransformMaintenance.cpp \
sudo gedit TransformMaintenance.cpp 
cd ..
ls
cd src
ls
cd ..
ls
cd include/
ls
cd loam_velodyne/
ls
sudo gedit TransformMaintenance.h 
ls
cd
cd catkin_ws/
ls
cd src
cd ..
catkin_make -DCMAKE_BUILD_TYPE=Release
cd src/lib\
cd src/lib
cd src
ls
cd loam_velodyne/
ls
cd src
cd lib
ls
sudo gedit TransformMaintenance.cpp 
cd ..
ls
cd ..
ls
cd include/
ls
cd loam_velodyne/
ls
sudo gedit TransformMaintenance.h 
cd
cd catkin_ws/
catkin_make -DCMAKE_BUILD_TYPE=Release
cd
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
cd Downloads/
ls
unzip realsense-ros-2.2.7.zip 
ls
rm -rf realsense-ros-2.2.7.zip
cd realsense-ros-2.2.7/
ls
cd realsense2_camera/
ls
cd src
ls
cd ..
cd scripts/
ls
cd ..
cd src/
ls
sudo gedit base_realsense_node.cpp 
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=true
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=false
cd
cd Down
cd Downloads
ls
rm -rf realsense-ros-2.2.7.zip
ls
cd realsense-ros-2.2.7/
ls
cd realsense2_description/
ls
lscd
cd
ls
cd buildLibrealsense2Xavier/
ls
cd scripts/
ls
cd ..
ls
cd patches/
ls
cd
cd /usr/local/lib
ls
cd ..
ls
cd include/
ls
cd librealsense2/
ls
cd hpp
ls
cd ..
ls
cd src
ls
cd ..
cd bin
ls
cd
cd buildLibrealsense2Xavier/
ls
sudo gedit installLibrealsense.sh 
ls
cd
ls
cd librealsense/
ls
cd examples/
ls
cd pointcloud/
ls
sudo gedit rs-pointcloud.cpp 
sudo gedit CMakeLists.txt 
sudo gedit rs-pointcloud.cpp 
cd
cd buildLibrealsense2Xavier/
sudo gedit installLibrealsense.sh 
ls
./installLibrealsense.sh 
ls
cd scripts/
ls
cd
cd librealsense/
l
ls
cd examples/
;s
ls
cd pointcloud/
ls
cd
cd /usr/local/bin
ls
./ rs-pointcloud
./rs-pointcloud
cd
cd librealsense/
ls
cd examples/
ls
cd po
cd pointcloud/
l
ls
sudo gedit rs-pointcloud.cpp 
cd 
cd buildLibrealsense2Xavier/
./installLibrealsense.sh 
cd
cd usr/local/bin
cd /usr/local/bin
./rs-pointcloud 
cd
cd buildLibrealsense2Xavier/
./installLibrealsense.sh 
cd
cd buildLibrealsense2Xavier/
ls
./installLibrealsense.sh 
cd
roslaunch loam_velodyne loam_velodyne.launch lidar:=OS1-64 scanPeriod:=0.05
roslaunch ouster_ros os1.launch os1_hostname:=os1-991910000511 os1_udp_dest:=192.168.1.1 lidar_mode:=1024x20 viz:=false
cd
sudo gedit base_realsense_node.cpp 
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
sudo systemctl stop dnsmasq
sudo systemctl start dnsmasq
journalctl -fu dnsmasq
lcm-spy
ls
cd scripts/
ls
./make_types.sh 
git add *
git commit -m "Increased TTL so publishes to network"
git push 
git push remote origin
git push origin master
git origin
git remote origin
got remote ls
got remote list
git remote list
git remote -v
git config
git config --global -l
git config -l
git remote l
git remote -l
git remote -v
vim .git/config 
git remote add origin https://github.com/carballodaniel/Cheetah-Vision.git
git remote -v
git push origin master
git config
sudo gedit librealsense/examples/pointcloud/rs-pointcloud.cpp 
tmux
cd librealsense/build/examples/pointcloud/
ls
cd ..
cd
cd librealsense/build/
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud \
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
ps -a
top
ps -a
vim
source ~/.bashrc 
vim
tmux
ls
cd ..
ls
mkdir another
sudo mkdir another
cd another/
ls
cd ..
cd another/
ls
git clone --recursive https://github.com/dhkim0821/dotfiles.git
sudo git clone --recursive https://github.com/dhkim0821/dotfiles.git
cd ..
cd nvidia/
ls
tmux
source .bashrc 
tmux
lcm-spy
source ~/.bashrc 
cd ..
ls
make
cd build/
make
cd ..
cd examples
ls
cd pointcloud/
ls
sudo gedit rs-pointcloud.cpp
cd
sudo apt-get update
sudo apt-get install libopencv-dev
cd scripts
cd
cd scripts
ls
./make_types.sh
ls
cd librealsense/
ls
./examples/pointcloud/rs-pointcloud 
cd examples
ls
cd pointcloud/
ls
gedit rs-pointcloud.
ls
gedit rs-pointcloud.cpp
cd 
cd librealsense/
ls
cd build/
ls
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
source ~/.bashrc 
make
source ~/.bashrc 
./examples/pointcloud/rs-pointcloud 
make
source ~/.bashrc 
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make -j
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
./examples/pointcloud/rs-pointcloud 
make
