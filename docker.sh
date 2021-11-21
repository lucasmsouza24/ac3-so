#!/bin/bash

# deleting docker if already exists
sudo docker rm ac3 -f

# pulling mysql:8.0 image
sudo docker pull mysql:8.0

# building mysql container
sudo docker run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=urubu100 --name ac3 mysql:8.0

# copying necessary directories
sudo docker cp database ac3:/

# enter on contaienr
sudo docker exec -it ac3 bash