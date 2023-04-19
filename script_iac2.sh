#!/bin/bash

echo "Buscandopacotes a serem atualizados..."
apt-get update
apt-get upgrade -y

echo "Atualizando pacotes..."
apt-get install apache2 -y
apt-get install unzip -y

echo "Conectando ao repositorio..."
cd/tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Arquivos baixados..."
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Script finalizado !"