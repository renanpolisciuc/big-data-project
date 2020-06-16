FROM maven:3.6.3

ARG VERSION=1.0-SNAPSHOT

WORKDIR /app

COPY pom.xml .

RUN mvn dependency:resolve

COPY ./src ./src

RUN mvn clean package -DskiptTests

CMD ["java", "-jar", "./target/microservice-app-1.0-SNAPSHOT.jar"]