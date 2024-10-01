# Используем базовый образ с OpenJDK 8 на Alpine Linux
FROM openjdk:8-jdk-alpine

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем JAR-файл в контейнер
COPY target/your-application-name.jar app.jar

# Открываем порт, на котором работает ваше приложение (например, 8080)
EXPOSE 8080

# Запускаем приложение
ENTRYPOINT ["java", "-jar", "app.jar"]