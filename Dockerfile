# First Stage: Build the application
FROM maven:3.8.5-openjdk-17 AS build

WORKDIR /app
COPY . .

RUN mvn clean package -DskipTests

# Second Stage: Run the application
FROM openjdk:17.0.1-jdk-slim

WORKDIR /app
# Copy the built WAR from the build stage
COPY --from=build /app/target/IIMTE_Karnataka-0.0.1-SNAPSHOT.war IIMTE_Karnataka.war

# Expose port
EXPOSE 8080

# Run the application (WAR files need an application server like Tomcat)
CMD ["java", "-jar", "IIMTE_Karnataka.war"]
