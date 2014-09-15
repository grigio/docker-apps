docker run -d --restart=always -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged --volumes-from=sync -p 22000:22000 -p 9101:8080 --name="web-syncthing" grigio/web-syncthing
