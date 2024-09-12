# Use Maven image to build and run the application
FROM maven:3.8.7-eclipse-temurin-17

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and source code into the container
COPY pom.xml .
COPY src ./src

# Package the application (skip tests for faster build)
RUN mvn clean package -DskipTests

# Change the working directory to where the JAR is located
WORKDIR /app/target

# Expose the application port (adjust as per your app)
EXPOSE 8088

# Run the JAR file from the target folder
CMD ["java", "-jar", "helloworld-1.0-SNAPSHOT.jar"]



