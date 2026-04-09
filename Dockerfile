# Step 1: Use a tiny version of Java 21 as the base
FROM eclipse-temurin:21-jre-alpine

# Step 2: Create a folder inside the container for our app
WORKDIR /app

# Step 3: Copy the JAR file we built with Jenkins into that folder
# (Ensure the filename matches your target folder exactly)
COPY target/hello-world-ci-0.0.1-SNAPSHOT.jar app.jar

# Step 4: Tell the container what command to run when it starts
ENTRYPOINT ["java", "-jar", "app.jar"]