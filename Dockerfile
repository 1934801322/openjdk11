FROM openjdk:11-jdk-slim

RUN apt update -qq -y; apt install python3-pip -y -qq
RUN pip3 install --upgrade awscli
ENV PATH=~/.local/bin:$PATH

MAINTAINER Mbanq <dev@mbanq.com>
