# Use a base JDK image
FROM amazoncorretto:21-alpine

# Set working directory
WORKDIR /app

# Copy the built jar file (we will build it during the CI)
COPY build/libs/GitHub-Actions-Demo-1.0-SNAPSHOT.jar app.jar

# Set the entry point
ENTRYPOINT ["java", "-jar", "app.jar"]
