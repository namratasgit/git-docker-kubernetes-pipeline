#FROM openjdk:11
#EXPOSE 8080
#ADD target/javawebapp-1.0.0.jar javawebapp-1.0.0.jar
#ENTRYPOINT ["java", "-jar", "/javawebapp-1.0.0.jar"]



#if the image size is too large, 
# Use a smaller base image
FROM adoptopenjdk:11-jre-hotspot

# Set the working directory
WORKDIR /app

# Copy only the JAR file into the image
COPY target/javawebapp-1.0.0.jar .

# Expose the port (this is optional, only needed if your app uses this port)
EXPOSE 8080

# Define the entry point
CMD ["java", "-jar", "javawebapp-1.0.0.jar"]
