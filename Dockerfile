# Use the official OpenJDK 11 as a base image
FROM openjdk:17-oraclelinux8

# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container at /app
COPY target/**/*.jar app.jar

# Expose the port that your Spring Boot application will run on
EXPOSE 8080

# Specify the command to run your application
CMD ["java", "-jar", "app.jar"]

