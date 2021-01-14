FROM centos:7
LABEL "name1"="andywang"
LABEL "name2"="andywang2"
LABEL "name3"="andywang3"

RUN yum install -y wget

RUN cd /

ADD jdk-8u271-linux-x64.tar.gz /

RUN wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.61/bin/apache-tomcat-8.5.61.tar.gz
RUN tar zxvf apache-tomcat-8.5.61.tar.gz

ENV JAVA_HOME=/jdk1.8.0_271
ENV PATH=$PATH:/jdk1.8.0_271/bin

CMD ["/apache-tomcat-8.5.61/bin/catalina.sh", "run"]
