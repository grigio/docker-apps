
# need a volume
docker run -d -p 9200:9200 -p 9300:9300 --name="elasticsearch" elasticsearch 

# fluent pass ES
docker run -ti -v /sys/fs/cgroups:/sys/fs/cgroups:ro --name="fluentd" ubuntu:14.04 /bin/bash

# kibana
docker run -d -p 9103:80 -e ES_HOST=mulo.local -e ES_PORT=9200 --name="kibana" kibana

