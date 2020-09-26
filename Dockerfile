FROM maven:3.6.3-adoptopenjdk-8
COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN ./mvnw package
ENTRYPOINT java -jar ./target/*.jar