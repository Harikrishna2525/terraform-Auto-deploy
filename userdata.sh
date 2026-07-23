#!/bin/bash

sudo apt update
sudo apt install -y nginx docker.io

sudo systemctl enable nginx
sudo systemctl start nginx

sudo systemctl enable docker
sudo systemctl start docker

 docker pull harikrishdocker25/test-app
 docker run -d --restart always -p 5000:3000 harikrishdocker25/test-app