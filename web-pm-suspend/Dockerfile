FROM debian:8

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install pm-utils nodejs -y \
    && rm -rf /var/lib/apt/lists/*

ADD ./app.js /

EXPOSE 8080
CMD ["nodejs", "app.js"]
