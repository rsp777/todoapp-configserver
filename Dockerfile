FROM openjdk:17-jdk-alpine
WORKDIR /config-server
MAINTAINER ravindra
# CMD ["mvn clean package"]
COPY target/config-server-0.0.1-SNAPSHOT.jar  /config-server/config-server-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","config-server-0.0.1-SNAPSHOT.jar"]
EXPOSE 8001
