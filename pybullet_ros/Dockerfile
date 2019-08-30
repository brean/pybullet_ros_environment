FROM ros:melodic-ros-base

RUN apt-get update && apt-get install -q -y \
    python3-pip \
    && rm -rf /var/lib/apt/lists/

RUN pip3 install pybullet

ENTRYPOINT ["roslaunch"]
CMD ["pybullet_ros" "bringup_robot_example.launch"]
