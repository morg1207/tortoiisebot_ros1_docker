#!/bin/bash
set -e

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
#source /catkin_ws/devel/setup.bash

# ejecutar 
source /catkin_ws/carto_ws/devel_isolated/setup.bash
# rosrun cartographer_ros cartographer_node -configuration_directory /catkin_ws/src/tortoisebot/tortoisebot_firmware/config -configuration_basename lidar.lua

# Para contenedor
# docker run -it --network host -e ROS_MASTER_URI=http://master:11311 -e ROS_IPV6=on  -e DISPLAY=:1  combuster54/tortoisebot:noetic-slam /bin/bash

# exec
sleep 1s

$@
