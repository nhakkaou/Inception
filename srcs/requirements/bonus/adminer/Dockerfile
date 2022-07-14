from debian:buster

RUN apt-get update  \
    && apt-get upgrade -y \
    && apt-get install adminer -y

EXPOSE 8080

# ENTRYPOINT [ "/bin/sh", "/tmp/script.sh" ]
CMD  tail -f /dev/null
