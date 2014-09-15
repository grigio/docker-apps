FROM grigio/archlinux-systemd

EXPOSE 8080 22000

RUN LATEST=`curl -s  https://github.com/syncthing/syncthing/releases/latest | grep -Eo "v[0-9]*.[0-9]*.[0-9]*"`; curl -L https://github.com/syncthing/syncthing/releases/download/$LATEST/syncthing-linux-amd64-$LATEST.tar.gz > syncthing.tar.gz; tar -xvzf syncthing.tar.gz

RUN mv syncthing-linux* syncthing

ADD ./syncthing-web.service /etc/systemd/system/multi-user.target.wants/
RUN ln -s /etc/systemd/system/multi-user.target.wants/syncthing-web.service /usr/lib/systemd/system/

CMD ["/usr/sbin/init"]
