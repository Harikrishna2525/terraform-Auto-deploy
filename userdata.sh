apt update 

apt install -y nginx docker.io 

systemctl enable nginx

systemctl start nginx

systemctl enable docker

systemctl start docker

docker pull harikrishdocker25/test-app

docker run -d --restart always -p 5000:3000 harikrishdocker25/test-app

