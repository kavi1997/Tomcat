#!/bin/sh

#installjava
yum install java-1.8.0-openjdk-devel
java -version

#download the latest version of Apache Tomcat 9
cd /opt
wget http://mirrors.fibergrid.in/apache/tomcat/tomcat-8/v8.5.35/bin/apache-tomcat-8.5.35.tar.gz
tar -xvzf /opt/apache-tomcat-8.5.35.tar.gz

chmod +x /opt/apache-tomcat-8.5.35/bin/startup.sh shutdown.sh

ln -s /opt/apache-tomcat-8.5.35/bin/startup.sh /usr/local/bin/tomcatup
ln -s /opt/apache-tomcat-8.5.35/bin/shutdown.sh /usr/local/bin/tomcatdown
tomcatup


#checkpoint
cd /opt/apache-tomcat-8.5.35/conf
# update port number in the "connecter port" field in server.xml
# restart tomcat after configuration update
