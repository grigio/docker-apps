FROM ubuntu:14.04
RUN apt-get update

RUN apt-get install -y ruby1.9.1 ruby1.9.1-dev make git curl libcurl4-openssl-dev docker.io

RUN echo "rubygems is slow, please wait.." && gem install fluent-plugin-elasticsearch fluent-plugin-docker-metrics --no-rdoc --no-ri

RUN mkdir /etc/fluent

ADD ./fluent.conf /etc/fluent

#fluent-ui
