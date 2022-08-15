#!/bin/bash

echo "Atualizando o servidor"
apt-get uptdate
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y

echo "Baixando e copiando os arquivos da aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/refs/heads/main.zip
unzip mains.zip
cd /linux-site-dio-main
cp -R * /var/www/html/

