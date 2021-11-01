FROM openjdk:8-alpine

EXPOSE 8080

ARG JAR_FILE=target/*.jar

COPY ${JAR_FILE} sample.jar

ADD spring-prod /spring-prod


#ENTRYPOINT ["sh", "-c", "java -javaagent:/spring-prod/scouter.agent.jar -Dscouter.config=/spring-prod/conf/scouter.conf -Dobj_name=k8s_pod1 -jar /sample.jar"]
ENTRYPOINT ["sh", "-c", "java -javaagent:/spring-prod/scouter.agent.jar -Dscouter.config=/spring-prod/conf/scouter.conf -jar /sample.jar"]
#ENTRYPOINT ["java","-jar","/sample.jar"]
