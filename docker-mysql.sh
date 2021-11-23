#!/bin/bash

# deleting mysql container if already exists
sudo docker rm ac3-mysql -f

# pulling mysql:8.0 image
sudo docker pull mysql:8.0

# creating network
sudo docker network create -d bridge net-ac3

# building mysql container
sudo docker run -d -it --network=net-ac3 -p 3306:3306 -e MYSQL_ROOT_PASSWORD=urubu100 --name ac3-mysql mysql:8.0

# copying necessary directories
sudo docker cp database ac3-mysql:/

# enter on contaienr
sudo docker exec -it ac3-mysql bash