FROM debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install cron -y
COPY ./config/mycron tmp/mycron
COPY ./tools/script.sh /home/script.sh
RUN chmod +x /home/script.sh 
RUN crontab /tmp/mycron
CMD [ "/usr/sbin/cron", "-f" ]