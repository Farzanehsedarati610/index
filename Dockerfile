# Use OpenJDK as base image
FROM openjdk:17-alpine

# Set working directory
WORKDIR /app

# Copy the JAR file
COPY financial-transfer-service.jar /app/financial-transfer-service.jar

# Expose the application port
EXPOSE 10000

# Give execution permissions (fixes 'invalid JAR file' errors)
RUN chmod +x /app/financial-transfer-service.jar

# Execute the JAR file
CMD ["java", "-jar", "/app/financial-transfer-service.jar"]
COPY target/financial-transfer-service-1.0.0.jar /app/financial-transfer-service.jar
WORKDIR /app
CMD ["java", "-jar", "/app/financial-transfer-service.jar"]

