FROM andywang1207/mydemo
LABEL "name1"="andywang"
LABEL "name2"="andywang2"
LABEL "name3"="andywang3"

RUN yum install -y wget

RUN cd /

CMD ["/apache-tomcat-8.5.61/bin/catalina.sh", "run"]
