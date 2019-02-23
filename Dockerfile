FROM maven:3.3-jdk-8 as build
COPY . .
RUN mvn clean test

FROM openjdk:8-jdk-alpine
WORKDIR /
COPY --from=build ./target/ .
EXPOSE 8080
CMD java -jar app.jar
