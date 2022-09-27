FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    &&  apt-get  install redis-server php-redis -y 

RUN sed -i -e 's/127.0.0.1/0.0.0.0/g' /etc/redis/redis.conf && service redis-server start

EXPOSE 6379

CMD [ "redis-server", "--protected-mode",  "no" ]
