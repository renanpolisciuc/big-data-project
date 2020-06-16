FROM maven:3.6.3 as build-stage

ARG VERSION=1.0-SNAPSHOT

WORKDIR /app

COPY pom.xml pom.xml

COPY ./src ./src

RUN mvn clean package -DskiptTests

FROM java:8

WORKDIR /app

COPY --from=build-stage /app/target/*.jar .

CMD ["java", "-jar", "/app/service-1-1.0-SNAPSHOT.jar"]