FROM debian:8

# less priviledge user
RUN groupadd -r dummy && useradd -r -g dummy dummy -u 1000

# curl
RUN apt-get update \
	&& apt-get install -y curl \
	&& rm -rf /var/lib/apt/lists/*

# btsync
RUN curl -o /usr/bin/btsync.tar.gz http://download-new.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz

# gosu install latest
RUN GITHUB_REPO="https://github.com/tianon/gosu" \
  && LATEST=`curl -s  $GITHUB_REPO"/releases/latest" | grep -Eo "[0-9].[0-9]"` \
  && curl -L $GITHUB_REPO"/releases/download/"$LATEST"/gosu-amd64" > /usr/local/bin/gosu \
  && chmod +x /usr/local/bin/gosu

EXPOSE 8888 55555
#BTSYNC=http://0.0.0.0:test gosu dummy usr/bin/btsync --config /data/btsync.conf --nodaemon

ENV BTSYNC http://0.0.0.0:test
CMD ["gosu", "dummy", "btsync", "--config", "/data/btsync.conf", "--nodaemon"]


# TODO fix /home/dummy path
