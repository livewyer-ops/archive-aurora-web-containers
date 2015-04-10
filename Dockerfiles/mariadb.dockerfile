FROM registry.livewyer.com/base-web-container

RUN apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db \
    && echo "deb http://lon1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main" > /etc/apt/sources.list.d/mariadb.list \
    && echo "deb-src http://lon1.mirrors.digitalocean.com/mariadb/repo/10.0/ubuntu trusty main" >> /etc/apt/sources.list.d/mariadb.list \
    && apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install mariadb-server

ADD Config/init.sql /init.sql

EXPOSE 3306

CMD ["mysqld", "--init-file=/init.sql"]
