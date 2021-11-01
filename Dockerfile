FROM openjdk:8-alpine

EXPOSE 8080

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} sample.jar

ENTRYPOINT ["java","-jar","/sample.jar"]
