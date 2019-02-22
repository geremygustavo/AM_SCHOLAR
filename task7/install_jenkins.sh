#install jenkins:2.107.3-alpine
docker pull registry.jala.info/devops/jenkins/jenkins:2.150.3-alpine

mkdir -p docker/jenkins_home
cd docker
chmod 777 jenkins_home
