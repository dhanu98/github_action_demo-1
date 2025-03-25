# Use an official OpenJDK runtime as a parent image
FROM openjdk:21-jdk-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the build artifacts to the container
COPY /target/my-app.jar /app/my-app.jar

# Set the command to run the JAR file
CMD ["java", "-jar", "my-app.jar"]

# Expose the port the app will run on (optional, depending on your app)
EXPOSE 8080
