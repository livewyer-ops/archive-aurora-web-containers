FROM registry.livewyer.com/base-web-container

RUN apt-get install -y redis-server

EXPOSE 6379

CMD ["redis-server"]
