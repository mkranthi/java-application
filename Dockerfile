FROM openjdk:11-alpine

WORKDIR /app

COPY HelloWorld.jar /app/

CMD ["java", "-jar", "HelloWorld.jar"]
