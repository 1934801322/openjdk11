ARG GOARCH=adm64

FROM openjdk:11-jdk-slim

RUN apt update -qq -y; apt install python3-pip -y -qq; \
    apt-get clean -y; rm -rf /var/lib/apt/lists/*
RUN pip3 install --upgrade awscli -q
ENV PATH=~/.local/bin:$PATH

MAINTAINER Mbanq <dev@mbanq.com>
