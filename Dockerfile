FROM openjdk:11
EXPOSE 8080
ADD target/javawebapp-1.0.0.jar javawebapp-1.0.0.jar
ENTRYPOINT ["java", "-jar", "/javawebapp-1.0.0.jar"]
