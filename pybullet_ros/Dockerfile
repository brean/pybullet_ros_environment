ARG ROS_DISTRO
FROM ros:${ROS_DISTRO}-ros-base

RUN mkdir -p /catkin_ws
COPY ./pybullet_ros /catkin_ws/src/pybullet_ros

RUN apt-get update && apt-get install -q -y \
    cmake git \
    python3-pip python3-yaml \
    python-catkin-tools python3-dev \
    python3-rospkg-modules python3-catkin-pkg-modules \
    ros-${ROS_DISTRO}-cob-gazebo-objects \
    ros-${ROS_DISTRO}-cv-bridge \
    ros-${ROS_DISTRO}-robot-state-publisher \
    && rm -rf /var/lib/apt/lists/

RUN cd /catkin_ws/src/ \
    && git clone https://github.com/socrob/mbot_simulation_environments.git

RUN pip3 install -U pip
RUN pip3 install -U numpy pybullet opencv-python

SHELL [ "/bin/bash", "-c" ]

WORKDIR /catkin_ws/
RUN source /opt/ros/${ROS_DISTRO}/setup.bash \
    && catkin_make

COPY ./entrypoint.bash /entrypoint.bash
RUN chmod +x /entrypoint.bash
CMD ["roslaunch", "pybullet_ros", "bringup_robot_example.launch"]
