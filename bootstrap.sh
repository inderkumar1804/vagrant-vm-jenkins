#!/bin/bash

# Install Jenkins 
echo "Installing Jenkins. Please wait.."
yum install wget -y > /dev/null 2>&1
wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo > /dev/null 2>&1
rpm --import https://jenkins-ci.org/redhat/jenkins-ci.org.key > /dev/null 2>&1
yum install jenkins java -y > /dev/null 2>&1

