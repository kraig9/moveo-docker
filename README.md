# moveo-docker

## Instructions to run demo:

# WINDOWS ONLY THIS PART TO FORWARD GRAPHICS FOR RVIZ AND OTHER GUI APPS:


download and install vcxsrv from https://sourceforge.net/projects/vcxsrv/

start vcxsrv by searching for xlaunch in start menu

change display number to 0 click next then next again

uncheck native opengl, check disable access control

click finish. your system tray should show it running.


# ALL OPERATING SYSTEMS

once in container,

cd into moveo_ros

source /opt/ros/kinetic/local_setup.bash 

catkin_make install --source .

source install/setup.bash 

roslaunch moveo_moveit_config/launch/demo.launch 