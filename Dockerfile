FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh
COPY target/spring-boot-mongo-1.0.jar $PROJECT_HOME/spring-boot-mongo.jar
CMD ["java" ,"-jar","./spring-boot-mongo.jar"]
