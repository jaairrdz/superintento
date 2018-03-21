#!/bin/bash
sudo su
mkdir /tmp/jenkins

#muestra donde estoy y muevo al siguiente
pushd /tmp/jenkins

wget --no-check-certificate --no-cookies \
--header "Cookie: oraclelicense=accept-securebackup-cookie" \
http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.rpm

rpm –ivh jdk-8u131-linux-x64.rpm
alternatives --install /usr/bin/java java /usr/java/latest/bin/java 200000
alternatives --install /usr/bin/javac javac /usr/java/latest/bin/javac 200000
alternatives --install /usr/bin/jar jar /usr/java/latest/bin/jar 200000
#verifies alternatives installations
alternatives --list

#escribir en el archivo con la ubicacion     _______________
echo "export JAVA_HOME="/usr/java/latest"" >> /etc/rc.local

#regresa a donde estabas
popd

#to exit vi
#esc key then :wq enter

#download
wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo
#Import the Jenkins rpm signing key
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
#Install jenkins
yum install -y jenkins-2.89.4-1.1
