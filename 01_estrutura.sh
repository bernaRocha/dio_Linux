#!/bin/bash

# 01_estrutura.sh
#
# 
# Script relativo ao projeto de código do Bootcamp Linux da Digital Innovation One
# Autor       :Bernardo Monteiro Rocha - GitHub && Codeberg @bernaRocha
# Manutenção  :Bernardo Monteiro Rocha 
# Criação em 106/08/2022
#
# Licença GPL

############# Comandos que aprendi mas não usei devido ter o Ubuntu como Host na minha máquina
## cat /etc/passwd verifica os usuários no sistema
## userdel -r (nome-usuario) deleta o determinado usuário
## cat /etc/group verifica os grupos
## groupdel (GRP_ADM ou o nome do grupo) deleta grupo de usuários

echo "Criando diretórios...."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos de usuários...."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários...."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123#) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm #permissões com as pastas
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico #permissão total

echo "Fim..."

## Para rodar o código
# chmod +x 01_estrutura.sh 
# ./01_estrutura.sh 
