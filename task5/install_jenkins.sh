# install jenkins.sh
echo "Hello World!"
# 1. install java8
sudo apt update
sudo apt install openjdk-11-jdk -y

#install jenkins:2.107.3-alpine
docker pull registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine