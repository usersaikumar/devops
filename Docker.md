# Docker Commands

## Docker Install on ubuntu
To install docker create sh file (example: docker.sh) and paste below commands

```
vi docker.sh
```
```
sudo apt-get update -y
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-key fingerprint 0EBFCD88
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y 
```
```
sh docker.sh
```
## Docker Install on centos or amazon linux

```
vi docker.sh
```
```
sudo yum update -y
sudo yum install docker -y
sudo usermod -a -G docker ec2-user
id ec2-user
wget https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m) 
sudo mv docker-compose-$(uname -s)-$(uname -m) /usr/local/bin/docker-compose
sudo chmod -v +x /usr/local/bin/docker-compose
sudo systemctl enable docker.service
sudo systemctl start docker.service
sudo systemctl status docker.service
```
```
sh docker.sh
```



## Docker Login
- Need to create Docker account in Docker Hub

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
it will save your container as image and use to store in docker hub

    docker push username/image_Name:version
it will save your customized image in docker hub

## Dockerfile
```
FROM ubuntu:18.04
COPY . /app
RUN make /app
CMD python /app/app.py
```

