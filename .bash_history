docker run -it ubuntu:18.04 bash
cls
sudo usermod -aG docker $USER
apt-get update
apt-get install -y software-properties-common
add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
docker run -it ubuntu:18.04 bash
sudo apt-get update
sudo apt-get install -y software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install -y apache2 php5.6 libapache2-mod-php5.6
sudo a2enmod php5.6
sudo service apache2 start
echo "<?php phpinfo(); ?>" | sudo tee /var/www/html/phpinfo.php
echo "<h1>Hola, soy Andre Boza</h1>" | sudo tee /var/www/html/index.html
mkdir ~/miweb
cd ~/miweb
nano Dockerfile
echo "<h1>Hola, soy Andre Boza</h1>" > index.html
echo "<?php phpinfo(); ?>" > phpinfo.php
docker build -t jfarfannet01/ubuntu18-apache-php .
sudo usermod -aG docker $USER
docker build -t jfarfannet01/ubuntu18-apache-php .
docker run -d -p 8080:80 jfarfannet01/ubuntu18-apache-php
