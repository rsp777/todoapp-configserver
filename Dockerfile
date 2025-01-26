FROM openjdk:17-jdk-alpine
WORKDIR /config-server
MAINTAINER ravindra
ARG PORT_NBR
ENV PORT $PORT_NBR
CMD ["ls -ltr","pwd"]
COPY target/todoapp-configserver-0.0.1-SNAPSHOT.jar  /config-server/todoapp-configserver-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","todoapp-configserver-0.0.1-SNAPSHOT.jar"]
EXPOSE 8001
