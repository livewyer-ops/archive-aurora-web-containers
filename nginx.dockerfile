FROM registry.livewyer.com/base-web-container

RUN apt-get install -y nginx && mkdir -p /srv
WORKDIR /srv
RUN wget http://ftp.drupal.org/files/projects/drupal-7.35.tar.gz && tar -zxvf drupal*.gz
ADD nginx.conf /etc/nginx/nginx.conf

EXPOSE 80
