#!/bin/bash


## Script p/ provisionamento automático de um servidor Web (Apache).

echo "Atualizando repositórios no servidor..."
apt update && apt upgrade -y

# instalando Apache & Unzip
echo "Instalando servidor Apache e Unzip..."
apt install apache2 unzip -y

echo "Download arquivos do projeto..."
mkdir tmp
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando arquivo .zip..."
unzip main.zip


# Copiando arquivos para pasta defult do servidor Apache
cd linux-site-dio-main
cp -R * /var/www/html/

## FIM
# Executar teste acessando endereço ip do servidor pelo browser
