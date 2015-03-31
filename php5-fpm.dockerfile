FROM registry.livewyer.com/base-web-container
RUN apt-get -y install php5-fpm php5-mysql php5-gd && mkdir -p /srv

ADD www.conf /etc/php5/fpm/pool.d/www.conf
WORKDIR /srv
RUN wget http://ftp.drupal.org/files/projects/drupal-7.35.tar.gz && tar -xzvf drupal*.gz && chmod -R 0777 /srv

EXPOSE 9000
CMD ["php5-fpm", "-F"]

