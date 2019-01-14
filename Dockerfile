FROM openjdk:8-jre-alpine AS run-environment

COPY --from=build-environment /app/target/demoapp.jar /app.jar

EXPOSE 8080

ENTRYPOINT ["java"]
CMD ["-jar","/app.jar"]
