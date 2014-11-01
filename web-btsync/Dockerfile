FROM grigio/archlinux-systemd

EXPOSE 8888 55555

RUN curl -o /usr/bin/btsync.tar.gz http://download-new.utorrent.com/endpoint/btsync/os/linux-x64/track/stable
RUN cd /usr/bin && tar -xzvf btsync.tar.gz && rm btsync.tar.gz

ADD ./btsync-web.service /etc/systemd/system/multi-user.target.wants/
RUN ln -s /etc/systemd/system/multi-user.target.wants/btsync-web.service /usr/lib/systemd/system/

CMD ["/usr/sbin/init"]
