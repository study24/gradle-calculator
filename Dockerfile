FROM gradle AS build
RUN mkdir /app
WORKDIR /app
COPY . .
RUN gradlew clean; \
    gradlew assemeber; \
    gradlew build; \
    gradlew jar


FROM openjdk:latest
COPY --form=build /app/*.jar app.jar
EXPOSE <check with you dev team for default application port>
CMD ["jar" , "-jar" , app.jar]

