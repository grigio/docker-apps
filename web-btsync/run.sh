docker run -it -v $PWD/syncdata:/data -p 55555:55555 -p 9106:8888 --name="web-btsync" grigio/web-btsync /bin/bash

docker run -d --restart=always -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged --volumes-from=sync -p 55555:55555 -p 9106:8888 --name="web-btsync" grigio/web-btsync
