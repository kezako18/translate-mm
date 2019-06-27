FROM debian:stretch
RUN apt-get update && apt-get install -y --force-yes apache2 curl git
EXPOSE 8080
VOLUME ["/var/www", "/var/log/apache2", "/etc/apache2"]
WORKDIR /var/www/nop
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]