FROM adoptopenjdk:latest

# Simply the artifact path
ARG artifact=target/demo-app-web.jar

WORKDIR /TYLAssignment/demo-app

COPY target/demo-app-web.jar .

ENTRYPOINT ["java","-jar","demo-app-web"]
