#!/bin/bash

echo "Ätualizando sistema e instalando dependências..."

apt-get install update
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando a aplicação..."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/
