echo "Building ROS nodes"

cd Examples_old/ROS/ORB_SLAM3
source /opt/ros/noetic/setup.bash
export ROS_PACKAGE_PATH=${ROS_PACKAGE_PATH}:/home/dit/ORB_SLAM3/Examples_old/ROS/ORB_SLAM3
rosdep init
rosdep update
sed -i 's/++11/++14/g' CMakeLists.txt

mkdir build
cd build
cmake .. -DROS_BUILD_TYPE=Release
make -j
