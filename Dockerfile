FROM registry.gitlab.com/culqit/docker-java:1.0.1

ENV NEW_RELIC_APP_NAME=nucleotx
ARG JAR_FILE
VOLUME /tmp
COPY target/nucleotx.war /
ENTRYPOINT ["java",\
 "-jar", "/nucleotx.war",\
 "-Djava.security.egd=file:/dev/./urandom",\
 "-javaagent:/opt/newrelic/newrelic.jar"\
]
