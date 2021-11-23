#!/bin/bash

# deleting mysql container if already exists
sudo docker rm ac3-python -f

# pulling python:3.9 image
sudo docker pull python:3.9

# building mysql container
sudo docker run -d -it --network=net-ac3 -p 5000:5000 --name ac3-python python:3.9

# copying necessary directories
sudo docker cp python ac3-python:/

# enter on contaienr
sudo docker exec -it ac3-python pip install mysql-connector-python

sudo docker exec -it ac3-python python /python/app.py
# sudo docker exec -d -it ac3-python python /python/app.py