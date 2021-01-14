build:
	docker-compose build pybullet-ros

run:
	xhost +local:root && docker-compose run pybullet-ros && xhost -local:root

down:
	docker-compose down

logs:
	docker-compose -f logs pybullet-ros
