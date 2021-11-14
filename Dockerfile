FROM maven:3-jdk-8
LABEL maintainer="mikheevevgeny@gmail.com" version="1.0" description="Docker image based on maven:3-jdk-8 with npm, nodejs and sshpass"

RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sshpass nodejs build-essential
RUN apt-get clean all
