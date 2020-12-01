FROM openjdk:11.0-jdk-slim
MAINTAINER tncad
COPY lib /usr/lib
COPY staging_to_core /usr/staging_to_core
RUN chmod +x /usr/staging_to_core/staging_to_core_run.sh
CMD [ "/usr/staging_to_core/staging_to_core_run.sh ]
