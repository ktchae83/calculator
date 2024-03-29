FROM openjdk:11

EXPOSE 8080

COPY build/libs/*.jar app.jar

ENTRYPOINT ["java", "-jar","-Dspring.profiles.active=prod", "app.jar"]