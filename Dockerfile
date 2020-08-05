FROM ubuntu:latest
COPY /target/hello-world-1.0-SNAPSHOT.jar /usr/local/lib/hello-world.jar
ENTRYPOINT ["java","-jar","/usr/local/lib/hello-world.jar"]