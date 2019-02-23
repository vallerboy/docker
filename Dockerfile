FROM openjdk:8-jdk-alpine
WORKDIR /
COPY /target/app.jar .
EXPOSE 8080
CMD java -jar app.jar
