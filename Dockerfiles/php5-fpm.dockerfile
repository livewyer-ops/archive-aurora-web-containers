FROM registry.livewyer.com/base-web-container
RUN apt-get -y install php5-fpm php5-mysql php5-gd && mkdir -p /srv

ADD Config/www.conf /etc/php5/fpm/pool.d/www.conf
WORKDIR /srv
RUN wget http://ftp.drupal.org/files/projects/drupal-7.35.tar.gz && tar -xzvf drupal*.gz && chmod -R 0777 /srv \
    && cp /srv/drupal-7.35/sites/default/default.settings.php /srv/drupal-7.35/sites/default/settings.php \
    && chmod a+w /srv/drupal-7.35/sites/default/settings.php

WORKDIR /srv/drupal-7.35/sites/all/libraries/
RUN git clone https://github.com/nrk/predis

EXPOSE 9000
CMD ["php5-fpm", "-F"]

