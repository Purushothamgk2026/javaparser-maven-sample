FROM eclipse-temurin:21-jre-alpine
WORKDIR /app
COPY --from=build /app/target/javaparser-maven-sample-1.0-SNAPSHOT-shaded.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]
