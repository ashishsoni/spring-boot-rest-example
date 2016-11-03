FROM java:8

MAINTAINER Ashish Soni <ashish.usoni@gmail.com>

VOLUME /tmp

ADD target/spring-boot-rest-example*.war app.war

RUN bash -c 'touch /app.war'

ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.war"]
