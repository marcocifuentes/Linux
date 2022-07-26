#!/bin/bash

## -------------------------------------------------------------------- ##
## 	Script p/ criar diretorios, grupos, usuários e permissões       ##
##	  Scritp - iac.sh, Versão 1.1, 26/07/2022		      	##
##	  Certique-se do arquivo ter permissões de execução: chmod 744	##
## 	  p/ utilizar o Script, execute o comando: " sudo ./iac.sh " 	##
## -------------------------------------------------------------------- ##

## Criando diretorio public
echo "Criando diretorio public..."
mkdir /public

## Criando sub-diretorios em /public
echo "Criando sub-diretorios..."
mkdir /public/publico
mkdir /public/adm
mkdir /public/ven
mkdir /public/sec

## Criando grupos de trabalho
echo "Criando grupo de usuarios..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

## Criando usuarios com senha "123" como default
echo "Criando usuarios e definindo grupos..."
## NAO FUNCIONA COM "-crypt" - EX.: useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC

## Definindo permissoes nos diretorios
echo "Definindo permissoes de grupos e diretorios..."
chown root:GRP_ADM /public/adm
chown root:GRP_VEN /public/ven
chown root:GRP_SEC /public/sec
chmod 770 /public/adm
chmod 770 /public/ven
chmod 770 /public/sec
chmod 777 /public/publico

## FIM
echo "."
echo "."
echo "."
echo "	F I M  "


