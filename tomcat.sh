#!/bin/sh

#installjava
yum install java-11-openjdk-devel	
java -version

#download the latest version of Apache Tomcat 9
cd /usr/local
wget http://apachemirror.wuchna.com/tomcat/tomcat-9/v9.0.26/bin/apache-tomcat-9.0.26.tar.gz
tar -xvf apache-tomcat-9.0.26.tar.gz
mv apache-tomcat-9.0.26 tomcat9

#configure a CATALINA_HOME environment variable
echo "export CATALINA_HOME="/usr/local/tomcat9"" >> ~/.bashrc
source ~/.bashrc

#start the tomcat web server
cd /usr/local/tomcat9/bin
./startup.sh 
