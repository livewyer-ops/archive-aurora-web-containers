#!/bin/bash
aurora job killall devcluster/php-interpreter/devel/php5-fpm
aurora job killall devcluster/web-server/devel/nginx
aurora job killall devcluster/cache/devel/redis
aurora job killall devcluster/db-server/devel/mariadb

