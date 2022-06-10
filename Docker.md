# Docker Commands
---





## Docker Login
- Nedd to create Docker account in Docker Hub

### command

    docker login
it will prompt to produce your username & password
then you will get logged in



## Docker Images

    docker images
it will show all images with your local repository

    docker pull images_Name
it will pull mentioned image from repository

    docker rmi image_Name
it will delete that image

    docker rmi $(docker images)
it will delete all images in local repository

## Containers

    docker ps
it will show running containers

    docker ps -a
it will show all containers including exited containers

    docker run -dit --name any_Name --network any_Network -p 0000 image_Name /bin/bash
it will create container in detached mode with given name, network & port in /bin/bash path

    docker start container_Name
it will start container

    docker stop container_Name
it will stop container

    docker kill container_Name
it will Stop container

    docker attach container_Name
it will attach contaier so then you could modify the container

    docker commits container_Name username/image_Name:version
it will save your container as image and store in docker hub


