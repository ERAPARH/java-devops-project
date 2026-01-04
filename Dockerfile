# Step 1: Base image
FROM openjdk:17-jdk-slim

# Step 2: Set working directory inside container
WORKDIR /app

# Step 3: Copy the packaged jar from target folder to container
COPY target/*.jar app.jar

# Step 4: Expose port 8080 to allow outside access
EXPOSE 8080

# Step 5: Command to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
