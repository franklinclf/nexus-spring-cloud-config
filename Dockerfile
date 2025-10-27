FROM azul/zulu-openjdk-alpine:25-jre-latest

WORKDIR /app

ARG JAR_FILE=/build/libs/Config-1.0.jar
COPY ${JAR_FILE} app.jar

EXPOSE 8084

ENTRYPOINT ["java", "-jar", "app.jar"]