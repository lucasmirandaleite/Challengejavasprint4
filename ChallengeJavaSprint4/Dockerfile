# Stage 1: Build the application
FROM maven:3.8.6-openjdk-11 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Create the final image
FROM openjdk:11-jre
WORKDIR /app
# Copia o JAR do estágio de build (CORREÇÃO FINAL AQUI)
COPY --from=build /app/target/rfid-tracking-1.0.0.jar app.jar
# Expõe a porta padrão do Spring Boot
EXPOSE 8080
# Comando para rodar a aplicação
ENTRYPOINT ["java", "-jar", "app.jar"]
