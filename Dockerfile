#pulling the minimal tomcat Image
FROM tomcat
#Maintainer Name
MAINTAINER "pragatibagde12@gmail.com"
# adding new user Nature1
RUN useradd -m -d /home/Nature1 -s /bin/bash Nature1
# create directory inside Nature1 user
RUN mkdir /home/Nature1/project1
#set appropriate permissions 
RUN chown -R Nature1:Nature1 /home/Nature1/project1
# create file inside project1 directory
RUN touch /home/Nature1/project1/sample1.txt
# switch user
#USER Nature1
# change Directory
#WORKDIR  project1
#copy Nature1.war to webapps
ADD target/Nature1.war /usr/local/tomcat/webapps
#RUN tar -zxf apache-tomcat-9.0.76.tar.gz
 

 
