FROM jenkins/jenkins
USER root
RUN apt-get -y update && \
    apt-get -y install docker-ce-cli
RUN curl -L "https://github.com/docker/compose/releases/download" -o
    /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose && \
    In -s /usr/local/bin/docker-compose /usr/bin/docker-compose
USER jenkins
