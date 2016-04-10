FROM tomcat:8-jre8
MAINTAINER De1mos <de1m0s242@gmail.com>

COPY tomcat-users.xml /usr/local/tomcat/conf/
COPY context.xml /usr/local/tomcat/conf/
COPY postgresql-jdbc4.jar /usr/local/tomcat/lib/postgresql.jar
COPY setenv.sh /usr/local/tomcat/bin/

VOLUME /usr/local/tomcat/webapps
VOLUME /var/external-files

# COPY dutch-treat.war /usr/local/tomcat/webapps/