docker run -ti --privileged -v /var/run/docker.sock:/var/run/docker.sock -v /sys/fs/cgroup:/sys/fs/cgroup:ro  --name="fluentd" ubuntu:14.04 /bin/bash 

