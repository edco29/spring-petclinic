FROM maven:3.6.3-adoptopenjdk-8
COPY . /usr/src/myapp/
RUN ./mvnw package
WORKDIR /usr/src/myapp/
ENTRYPOINT java -jar ./target/*.jar