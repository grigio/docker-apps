FROM base/archlinux
# more info: http://rhatdan.wordpress.com/2014/04/30/running-systemd-within-a-docker-container/

ENV container docker
RUN pacman -Syu --noconfirm

RUN (cd /lib/systemd/system/sysinit.target.wants/; for i in *; do [ $i == systemd-tmpfiles-setup.service ] || rm -f $i; done); \
rm -f /lib/systemd/system/multi-user.target.wants/*; \
rm -f /etc/systemd/system/*.wants/*; \
rm -f /lib/systemd/system/local-fs.target.wants/*; \
rm -f /lib/systemd/system/sockets.target.wants/*udev*; \
rm -f /lib/systemd/system/sockets.target.wants/*initctl*; \
rm -f /lib/systemd/system/basic.target.wants/*;

# switch default target from graphical to multi-user
RUN systemctl set-default multi-user.target 

RUN useradd --uid 1000 dummy

VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/bin/init"]
