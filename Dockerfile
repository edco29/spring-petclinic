FROM openjdk:8
COPY ./target/*.jar  /usr/src/myapp/
WORKDIR /usr/src/myapp/
ENTRYPOINT java -jar *.jar
