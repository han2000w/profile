FROM openjdk:8-alpine
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} sample.jar
COPY scouter.agent.jar scouter.agent.jar
ENTRYPOINT ["sh", "-c", "java -javaagent:/scouter.agent.jar -Dnet_collector_ip=192.168.62.200 -Djava.home=/usr/lib/jvm/java-1.8-openjdk -jar /sample.jar"]


#ENTRYPOINT ["sh", "-c", "java -javaagent:/spring-prod/scouter.agent.jar -Dscouter.config=/spring-prod/conf/scouter.conf -Dobj_name=k8s_pod1 -jar /sample.jar"]

#ENTRYPOINT ["java","-jar","/sample.jar"]
