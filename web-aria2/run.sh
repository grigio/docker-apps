docker run -d --restart=always -v /sys/fs/cgroup --privileged --volumes-from=downloads -p 6800:6800 -p 9100:8080 --name="web-aria2" grigio/web-aria2
