FROM openjdk:17.0.2-jdk
WORKDIR /opt/app

COPY /target/spring-petclinic-*.jar /opt/app/ROOT.jar

ENTRYPOINT ["java","-jar","-XX:+UseZGC","-Xmx800m","ROOT.jar"]