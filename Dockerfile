# Stage 1: Build the application
FROM maven:3.9.0-eclipse-temurin-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Create the final image
FROM eclipse-temurin:11-jre-alpine
WORKDIR /app
# Copia o JAR do estágio de build
COPY --from=build /app/target/*.jar app.jar
# Expõe a porta padrão do Spring Boot
EXPOSE 8080
# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
