# Use OpenJDK as base image
FROM openjdk:21-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory to the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Expose the application port
EXPOSE 8080

# Run the Spring Boot application
CMD ["java", "-jar", "app.jar"]
