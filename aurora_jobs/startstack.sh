#!/bin/bash -xe
sudo docker rm -f consul registrator || true
sudo docker run -d --name consul --net=host progrium/consul -server -bootstrap -ui-dir /ui -advertise 192.168.33.7
sudo docker run -d -v /var/run/docker.sock:/tmp/docker.sock --name registrator -h $HOSTNAME registry.livewyer.com/registrator consul://172.17.42.1:8500
aurora job create devcluster/cache/devel/redis redis.aurora
aurora job create devcluster/db-server/devel/mariadb mariadb.aurora
aurora job create devcluster/web-server/devel/nginx nginx.aurora
aurora job create devcluster/php-interpreter/devel/php5-fpm php5-fpm.aurora
