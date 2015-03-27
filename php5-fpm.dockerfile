FROM registry.livewyer.com/base-web-container
RUN apt-get -y install php5-fpm php5-mysql php5-gd

ADD www.conf /etc/php5/fpm/pool.d/www.conf

EXPOSE 9000
CMD ["php5-fpm", "-F"]

