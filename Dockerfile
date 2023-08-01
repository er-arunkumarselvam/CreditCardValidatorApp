#
# Build stage
#
FROM maven:3.8.2-jdk-11 AS build
COPY . .
RUN mvn clean package -DskipTests

#
# Package stage
#
FROM openjdk:11-jdk-slim
COPY --from=build /target/CreditCardValidator-0.0.1-SNAPSHOT.jar credit-card-validator-app.war
# ENV PORT=8181
EXPOSE 8181
ENTRYPOINT ["java","-war","credit-card-validator-app.war"]
