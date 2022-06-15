FROM maven:3.6.0-jdk-8-slim AS build
RUN apt-get update
WORKDIR /workspace
COPY pom.xml .
RUN mvn clean install
COPY src src
RUN mvn package

FROM openjdk:8 AS runtime
WORKDIR /workspace
COPY --from=build /workspace/target ./target
CMD ["java", "-jar", "target/scala-docker-example-1.0.0-jar-with-dependencies.jar"]
