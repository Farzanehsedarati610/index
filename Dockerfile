# Use OpenJDK as base image (for Java)
FROM openjdk:17-alpine

# Set working directory
WORKDIR /app

# Copy compiled jar file (adjust name if needed)
COPY financial-transfer-service.jar .

# Expose the expected port
EXPOSE 10000

# Start the application
CMD ["java", "-jar", "financial-transfer-service.jar"]

