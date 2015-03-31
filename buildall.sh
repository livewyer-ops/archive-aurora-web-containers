#!/bin/bash

DATETIME=$(date -u +%Y-%m-%d-%H%M)

# Build Base
docker build -t registry.livewyer.com/base-web-container:$DATETIME -f base.dockerfile .
docker tag -f registry.livewyer.com/base-web-container:$DATETIME registry.livewyer.com/base-web-container:latest
docker push registry.livewyer.com/base-web-container:$DATETIME
docker push registry.livewyer.com/base-web-container:latest

# Build PHP
docker build -t registry.livewyer.com/php5-fpm:$DATETIME -f php5-fpm.dockerfile .
docker tag -f registry.livewyer.com/php5-fpm:$DATETIME registry.livewyer.com/php5-fpm:latest
docker push registry.livewyer.com/php5-fpm:$DATETIME
docker push registry.livewyer.com/php5-fpm:latest

# Build nginx
docker build -t registry.livewyer.com/nginx:$DATETIME -f nginx.dockerfile .
docker tag -f registry.livewyer.com/nginx:$DATETIME registry.livewyer.com/nginx:latest
docker push registry.livewyer.com/nginx:$DATETIME
docker push registry.livewyer.com/nginx:latest

# Build mySQL
docker build -t registry.livewyer.com/mysql:$DATETIME -f mysql.dockerfile .
docker tag -f registry.livewyer.com/mysql:$DATETIME registry.livewyer.com/mysql:latest
docker push registry.livewyer.com/mysql:$DATETIME
docker push registry.livewyer.com/mysql:latest

#build glusterfs
docker build -t registry.livewyer.com/glusterfs:$DATETIME -f glusterfs.dockerfile .
docker tag -f registry.livewyer.com/glusterfs:$DATETIME registry.livewyer.com/glusterfs:latest
docker push registry.livewyer.com/glusterfs:$DATETIME
docker push registry.livewyer.com/glusterfs:latest

#build mariadb
docker build -t registry.livewyer.com/mariadb:$DATETIME -f mariadb.dockerfile .
docker tag -f registry.livewyer.com/mariadb:$DATETIME registry.livewyer.com/mariadb:latest
docker push registry.livewyer.com/mariadb:$DATETIME
docker push registry.livewyer.com/mariadb:latest
