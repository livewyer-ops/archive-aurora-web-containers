FROM registry.livewyer.com/base-web-container

RUN apt-get install -y nginx && mkdir -p /srv
WORKDIR /srv
RUN wget http://ftp.drupal.org/files/projects/drupal-7.35.tar.gz && tar -zxvf drupal*.gz \
    && cp /srv/drupal-7.35/sites/default/default.settings.php /srv/drupal-7.35/sites/default/settings.php
ADD Config/nginx.template /nginx.template

EXPOSE 80
