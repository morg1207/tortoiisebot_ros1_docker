#!/bin/bash

# setup ros environment
source /opt/ros/$ROS_DISTRO/setup.bash
source /catkin_ws/devel/setup.bash

sleep 2
#launch bringup
roslaunch tortoisebot_firmware bringup.launch &

roslaunch realsense2_camera rs_camera.launch 

# Ejecutar solo esta imagen

#docker run -it --rm --network host -e ROS_HOSTNAME=ubuntu -e  #ROS_MASTER_URI=http://ubuntu:11311 -v /home/tortoisebot/tortoisebot_ros1_docker/#rb1_shelf_web:/rb1_shelf_web -v /home/tortoisebot/tortoisebot_ros1_docker/#tortoisebot_webapp:/tortoisebot_webapp morg1207/#morg1207-cp15:tortoisebot-ros1-real /bin/bash

