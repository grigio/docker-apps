FROM debian:8

# less priviledge user
RUN groupadd -r dummy && useradd -r -g dummy dummy -u 1000

# curl
RUN apt-get update \
	&& apt-get install -y curl \
	&& rm -rf /var/lib/apt/lists/*

#`curl -s  https://github.com/syncthing/syncthing/releases/latest | grep -Eo "v[0-9]*.[0-9]*.[0-9]*"`
RUN LATEST=v0.12.6; curl -L https://github.com/syncthing/syncthing/releases/download/$LATEST/syncthing-linux-amd64-$LATEST.tar.gz > syncthing.tar.gz; tar -xvzf syncthing.tar.gz

RUN mv syncthing-linux* syncthing

# gosu install latest
RUN GITHUB_REPO="https://github.com/tianon/gosu" \
  && LATEST=`curl -s  $GITHUB_REPO"/releases/latest" | grep -Eo "[0-9].[0-9]"` \
  && curl -L $GITHUB_REPO"/releases/download/"$LATEST"/gosu-amd64" > /usr/local/bin/gosu \
  && chmod +x /usr/local/bin/gosu \
  && chown -Rfv 1000:1000 /syncthing

# enabled gosu syncthing autoupdate

ENV STGUIADDRESS http://0.0.0.0:8080
ENV HOME /data

EXPOSE 8080 22000
CMD ["gosu","dummy","/syncthing/syncthing","-home=/data"]


