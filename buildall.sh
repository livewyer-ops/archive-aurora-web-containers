#!/bin/bash -xe

DATETIME=$(date -u +%Y-%m-%d-%H%M)

# Build Base
docker build -t registry.livewyer.com/base-web-container:$DATETIME -f Dockerfiles/base.dockerfile .
docker tag -f registry.livewyer.com/base-web-container:$DATETIME registry.livewyer.com/base-web-container:latest
docker push registry.livewyer.com/base-web-container:$DATETIME
docker push registry.livewyer.com/base-web-container:latest

# Build PHP
docker build -t registry.livewyer.com/php5-fpm:$DATETIME -f Dockerfiles/php5-fpm.dockerfile .
docker tag -f registry.livewyer.com/php5-fpm:$DATETIME registry.livewyer.com/php5-fpm:latest
docker push registry.livewyer.com/php5-fpm:$DATETIME
docker push registry.livewyer.com/php5-fpm:latest

# Build nginx
docker build -t registry.livewyer.com/nginx:$DATETIME -f Dockerfiles/nginx.dockerfile .
docker tag -f registry.livewyer.com/nginx:$DATETIME registry.livewyer.com/nginx:latest
docker push registry.livewyer.com/nginx:$DATETIME
docker push registry.livewyer.com/nginx:latest

# Build glusterfs
docker build -t registry.livewyer.com/glusterfs:$DATETIME -f Dockerfiles/glusterfs.dockerfile .
docker tag -f registry.livewyer.com/glusterfs:$DATETIME registry.livewyer.com/glusterfs:latest
docker push registry.livewyer.com/glusterfs:$DATETIME
docker push registry.livewyer.com/glusterfs:latest

# Build mariadb
docker build -t registry.livewyer.com/mariadb:$DATETIME -f Dockerfiles/mariadb.dockerfile .
docker tag -f registry.livewyer.com/mariadb:$DATETIME registry.livewyer.com/mariadb:latest
docker push registry.livewyer.com/mariadb:$DATETIME
docker push registry.livewyer.com/mariadb:latest

# Build redis
docker build -t registry.livewyer.com/redis:$DATETIME -f Dockerfiles/redis.dockerfile .
docker tag -f registry.livewyer.com/redis:$DATETIME registry.livewyer.com/redis:latest
docker push registry.livewyer.com/redis:$DATETIME
docker push registry.livewyer.com/redis:latest

echo "$DATETIME" > aurora_jobs/latest
