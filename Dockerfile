# Use a valid OpenJDK image (slim version is lightweight and similar to Alpine)
FROM openjdk:11-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file into the container
COPY HelloWorld.java /app/

# Command to run the JAR file
CMD ["java", "-jar", "HelloWorld.java"]
