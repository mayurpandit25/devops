FROM centos:7
RUN  yum install java-openjdk -y
ADD  https://dlcdn.apache.org/tomcat/tomcat-8/v8.5.88/bin/apache-tomcat-8.5.88.tar.gz ./
RUN tar -xzf /apache-tomcat-8.5.88.tar.gz -C /opt
WORKDIR /opt/apache-tomcat-8.5.88
RUN ls /opt/apache-tomcat-8.5.88/
CMD ["/opt/apache-tomcat-8.5.88/bin/catalina.sh", "run"]