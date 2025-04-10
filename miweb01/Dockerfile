# Usar la imagen base de Ubuntu 18
FROM ubuntu:18.04

# Instalar Apache y PHP
RUN apt-get update && apt-get install -y \
    apache2 \
    php \
    libapache2-mod-php \
    && apt-get clean

# Copiar el archivo phpinfo.php al directorio adecuado
COPY phpinfo.php /var/www/html/

# Exponer el puerto 80 (puerto de Apache)
EXPOSE 80

# Comando para iniciar Apache
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

