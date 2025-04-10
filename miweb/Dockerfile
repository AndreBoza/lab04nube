FROM ubuntu:18.04

RUN apt-get update && apt-get install -y \
    apache2 \
    software-properties-common \
    && add-apt-repository ppa:ondrej/php -y \
    && apt-get update && apt-get install -y \
    php5.6 libapache2-mod-php5.6 \
    && a2enmod php5.6

COPY index.html /var/www/html/
COPY phpinfo.php /var/www/html/

EXPOSE 80
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
