FROM maven:3.6.3-adoptopenjdk-8
COPY . /usr/src/myapp/
WORKDIR /usr/src/myapp/
RUN mvn package
EXPOSE 9090
ENTRYPOINT java -jar ./target/*.jar