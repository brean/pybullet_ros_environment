FROM ros:melodic-ros-base as intermediate

RUN mkdir -p /catkin_ws
COPY ./pybullet_ros /catkin_ws/pybullet_ros

FROM ros:melodic-ros-base

RUN apt-get update && apt-get install -q -y \
    python3-pip python3-yaml \
    python-catkin-tools python3-dev \
    python3-rospkg-modules python3-catkin-pkg-modules \
    && rm -rf /var/lib/apt/lists/

RUN pip3 install pybullet

SHELL [ "/bin/bash", "-c" ]

COPY --from=intermediate /catkin_ws /catkin_ws
WORKDIR /catkin_ws/pybullet_ros
RUN source /opt/ros/melodic/setup.bash \
    && catkin_make

CMD ["roslaunch" "pybullet_ros" "bringup_robot_example.launch"]
