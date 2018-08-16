FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y cron 

COPY crontab /etc/cron.d/hello-cron

RUN chmod 0644 /etc/cron.d/hello-cron && \
    touch /var/log/cron.log

CMD ["cron", "-f"]