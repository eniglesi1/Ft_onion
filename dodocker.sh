#! /bin/bash
docker build -t kalimg .
docker run -it -d --mount type=bind,source=/Users/eniglesi/Documents/Cyber/ft_onion,target=/home/ --name kalicon kalimg bash
docker exec -it kalicon bash
