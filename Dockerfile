FROM navikt/java:14
USER root
RUN apt-get update && apt-get install -y curl
USER apprunner
COPY scripts/init-env.sh /init-scripts/init-env.sh
COPY build/libs/pam-template-gradle-*-all.jar ./app.jar
ENV JAVA_OPTS="-Xms256m -Xmx1536m"
