FROM mrgabri/perfect-php:1.0

COPY ./_devops/local/docker/cron/crontab /root/crontab

RUN mkdir /var/log/cron && touch /var/log/cron/cron.log

RUN crontab -u root /root/crontab

ENTRYPOINT ["crond","-f"]