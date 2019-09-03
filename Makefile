up:
	docker-compose up

down:
	docker-compose down

logs:
	docker-compose -f logs

install:
	docker build \
		-t pybullet_ros:latest \
		pybullet_ros/
