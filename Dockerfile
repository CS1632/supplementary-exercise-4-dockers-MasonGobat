# specify base image
FROM openjdk:8-jdk-alpine

# install Maven on top of base image
RUN apk update && apk add maven

# define working directory
WORKDIR /app

# copy over app files
COPY pom.xml .
COPY src src

# expose default Spring Boot port 8080
EXPOSE 8080

# define default command
CMD ["/bin/sh", "-c", "mvn spring-boot:run"]