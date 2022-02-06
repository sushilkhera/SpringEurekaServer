#Start with a base image containing Java runtime
FROM openjdk:11-slim as build

#Information around who maintains the image
MAINTAINER sushilkhera

# Add the application's jar to the container
COPY target/SpringEurekaServer-0.0.1-SNAPSHOT.jar SpringEurekaServer-0.0.1-SNAPSHOT.jar

#execute the application
ENTRYPOINT ["java","-jar","/SpringEurekaServer-0.0.1-SNAPSHOT.jar"]