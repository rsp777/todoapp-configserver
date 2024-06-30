FROM openjdk:17-jdk-alpine
WORKDIR /register-service
MAINTAINER ravindra
# CMD ["mvn clean package"]
COPY target/config-server-0.0.1-SNAPSHOT.jar  /config-server/config-server-0.0.1-SNAPSHOT.jar
 CMD ["ls -ltr"]
ENTRYPOINT ["java","-jar","config-server-0.0.1-SNAPSHOT.jar"]
EXPOSE 8082
