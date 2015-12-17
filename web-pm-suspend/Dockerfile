FROM alpine:3.2
MAINTAINER Luigi Maselli grigio.org


RUN apk add --update pm-utils nodejs && \
    rm -rf /var/cache/apk/*

ADD ./app.js /

EXPOSE 8080
CMD ["node", "app.js"]
