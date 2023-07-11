FROM ros:kinetic

COPY sources.list /etc/apt/
RUN apt update
RUN apt install -y curl
RUN sudo sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add - && apt update
RUN apt update
RUN git clone https://github.com/kraig9/moveo_ros.git
RUN apt upgrade -y
RUN apt update -y
RUN apt install -y ros-kinetic-desktop-full
RUN apt install -y ros-kinetic-moveit-*