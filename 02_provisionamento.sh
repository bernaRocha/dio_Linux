#!/bin/bash

# 02_provisionamento.sh
# Infraestrutura como código
# Script de Provisionamento de um servidor web (Apache)
#
# Script relativo ao projeto de código do Bootcamp Linux da Digital Innovation One
# Autor       :Bernardo Monteiro Rocha - GitHub && Codeberg @bernaRocha
# Manutenção  :Bernardo Monteiro Rocha 
# Criação em 106/08/2022
#
# Licença GPL

# Primeiro: atualizar o servidor

echo "Atualizando o servidor...."

apt-get update 
apt-get upgrade -y # -y para cada pergunta a resposta é yes/sim
apt-get install apache2 -y 
apt-get install unzip -y 

echo "Baixando e copiando os arquivos da aplicação...."

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip    # Por padrão o wget vem instalado
unzip main.zip

cd linux-site-dio-main
cp -R * /var/www/html/ # Copia para o Apache

# Permissão para execussão
chmod +x 02_provisionamento.sh

