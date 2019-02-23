# install jenkins.sh
echo "Hello World!"
# 1. install java8
sudo apt update
sudo apt install openjdk-11-jdk -y

#install jenkins:2.107.3-alpine
docker pull registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine

#create folder 
mkdir docker
cd docker
mkdir jenkins_home
chmod 777 jenkins_home
cd ..
# run docker
docker run -d -p 8080:8080 -p 50000:50000 -v "/home/ubuntu/docker/jenkins_home:/var/jenkins_home" registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine