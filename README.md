# pybullet_ros_environment

Development environment for pybullet using Docker

## Requirements & Installation

1. Install docker/moby and docker-compose
1. check out the pybullet repo using --recursive: `git submodule update --init --recursive`
1. run `docker-compose build pybullet-ros` or use the Makefile and run `make build`
1. run `make run`, this will create and start the docker container.

You can stop using `CTRL+c`.

## Usage

You can change the code in pybullet_ros folder and use the docker environment to run it. You have to stop and rerun manually after you change the code.
