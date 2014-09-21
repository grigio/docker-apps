# Docker Apps

This is a collection of systemd based images based on `grigio/archlinux-systemd`

### How to add persistant data to a container?

You need generally a *data-container* and the *app-container*

```
docker run -d --restart=always -v /mnt/yout_host_data:/data --name=volume-sync  grigio/archlinux-systemd echo Data-only container
docker run -d -v /sys/fs/cgroup --privileged --volumes-from=volume-sync -p 22000:22000 -p 9101:8080 grigio/web-syncthing

as alternative:
docker run -d --restart=always -v /sys/fs/cgroup --privileged --volumes-from=sync -p 22000:22000 -p 9101:8080 --name="web-syncthing" grigio/web-syncthing
```

### How to enter in a container?

Use `nsenter`/`nsinit` http://jpetazzo.github.io/2014/03/23/lxc-attach-nsinit-nsenter-docker-0-9/

```
PID=$(docker inspect --format '{{.State.Pid}}' my_container_id)
nsenter --target $PID --mount --uts --ipc --net --pid
```

More info at: http://grigio.org/how_use_docker_really

## grigio/archlinux-systemd
a lightweight base distribution that works with systemd containers

## grigio/web-aria2
a web UI with aria2 download manager

## grigio/web-syncthing
a web UI with syncthing
