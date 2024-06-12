# Use the official image as a parent image
FROM openjdk:17-jdk-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the executable JAR into the container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Run the JAR file
ENTRYPOINT ["java","-jar","app.jar"]
