#!/bin/bash
aurora job create devcluster/cache/devel/redis redis.aurora
aurora job create devcluster/db-server/devel/mariadb mariadb.aurora
aurora job create devcluster/web-server/devel/nginx nginx.aurora
aurora job create devcluster/php-interpreter/devel/php5-fpm php5-fpm.aurora
