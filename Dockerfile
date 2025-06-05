# Use OpenJDK as base image
FROM openjdk:17-alpine

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY financial-transfer-service.jar financial-transfer-service.jar

# Expose the required port
EXPOSE 10000

# Run the application
CMD ["java", "-jar", "financial-transfer-service.jar"]

