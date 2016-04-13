FROM tomcat:8-jre8
MAINTAINER De1mos <de1m0s242@gmail.com>

RUN apt-get update && apt-get install -y gettext

COPY tomcat-users.xml /usr/local/tomcat/conf/tomcat-users.xml.tmpl
COPY context.xml /usr/local/tomcat/conf/
COPY postgresql-jdbc4.jar /usr/local/tomcat/lib/postgresql.jar
COPY setenv.sh /usr/local/tomcat/bin/
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

VOLUME /usr/local/tomcat/webapps
VOLUME /var/external-files

ENTRYPOINT ["/entrypoint.sh"]

CMD ["catalina.sh", "run"]