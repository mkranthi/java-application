# Use Maven image to build and run the application
FROM maven:3.8.7-eclipse-temurin-17

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code into the container
COPY my-app/pom.xml .
COPY my-app/src ./src

# Package the application (skip tests for faster build)
RUN mvn clean package -DskipTests

# Expose the application port (update if necessary)
EXPOSE 8080

# Run the JAR file from the target folder
CMD ["java", "-jar", "target/my-app-1.0-SNAPSHOT.jar"]
