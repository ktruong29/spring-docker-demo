#Need jdk 17 to run the app
FROM openjdk:17
#Create a working dir (good practice)
WORKDIR /app
#Copy the jar from target folder and paste to /app directory (if not exist) inside the container
COPY ./target/spring-docker.jar /app
#Port in container to run the app (should be the same port in app.properties file)
EXPOSE 8282
#command to run the jar
CMD ["java", "-jar", "spring-docker.jar"]
