FROM openjdk:8-jre-alpine
ARG PROJECT_VERSION=0.1.0-SNAPSHOT
ENV JARNAME hippo-dockerizer-${PROJECT_VERSION}-jar-with-dependencies.jar
COPY target/${JARNAME} /opt/
COPY docker /opt/docker

EXPOSE 8000
ENTRYPOINT java -jar /opt/${JARNAME} App