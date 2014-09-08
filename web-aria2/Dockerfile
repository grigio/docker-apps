FROM grigio/archlinux-systemd

EXPOSE 8080 6800
RUN pacman -S aria2 git busybox --noconfirm
RUN git clone https://github.com/ziahamza/webui-aria2

ADD ./aria2.service /etc/systemd/system/multi-user.target.wants/
ADD ./aria2-web.service /etc/systemd/system/multi-user.target.wants/
RUN ln -s /etc/systemd/system/multi-user.target.wants/aria2-web.service /usr/lib/systemd/system/
RUN ln -s /etc/systemd/system/multi-user.target.wants/aria2.service /usr/lib/systemd/system/

RUN echo "root:letmein"|chpasswd

CMD ["/usr/sbin/init"]
