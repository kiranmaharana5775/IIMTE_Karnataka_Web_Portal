# First Stage: Build the application
FROM maven:3.8.5-openjdk-17 AS build

# Set working directory
WORKDIR /app

# Copy project files
COPY pom.xml .
RUN mvn dependency:go-offline

# Build the Spring Boot application
COPY src ./src
RUN mvn clean package -DskipTests

# Second Stage: Run the application
FROM openjdk:17.0.1-jdk-slim

# Set working directory
WORKDIR /app

# Copy the built JAR from the build stage
COPY --from=build /app/target/IIMTE_Karnataka-0.0.1-SNAPSHOT.jar .

# Expose port
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "/app/IIMTE_Karnataka-0.0.1-SNAPSHOT.jar"]