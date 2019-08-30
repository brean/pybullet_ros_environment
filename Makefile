up:
	docker-compose up -d

down:
	docker-compose down

install:
	docker build \
		-t pybullet_ros:latest \
		pybullet_ros/
