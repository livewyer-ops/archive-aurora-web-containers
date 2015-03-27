FROM registry.livewyer.com/base-web-container

RUN apt-get install -y nginx
ADD nginx.conf /etc/nginx/nginx.conf
