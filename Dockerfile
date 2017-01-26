FROM openjdk:8-jdk

# Install Docker client
ARG DOCKER_VERSION=1.12.3
RUN curl -fsSL https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION.tgz | tar --strip-components=1 -xz -C /usr/local/bin docker/docker

ENV JENKINS_AGENT_USERNAME jenkins_agent_user
RUN useradd -M -s /bin/bash $JENKINS_AGENT_USERNAME
USER $JENKINS_AGENT_USERNAME
WORKDIR /home/$JENKINS_AGENT_USERNAME
