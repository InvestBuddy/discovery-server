# Use JDK 21 as the base image
FROM openjdk:21-jdk

# Set working directory
WORKDIR /app

# Copy the JAR file and rename it to notification.jar
COPY target/discovery-server-1.0-SNAPSHOT.jar discovery-server.jar
# Expose port
EXPOSE 8761

# Run the application
ENTRYPOINT ["java", "-jar", "discovery-server.jar"]
