#! /bin/bash
docker images | grep "kalimg"
docker ps -a | grep "kalicon"
docker rm -vf kalicon
docker rmi kalimg
docker images | grep "kalimg"
docker ps -a | grep "kalicon"
