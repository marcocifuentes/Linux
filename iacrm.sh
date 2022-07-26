#!/bin/bash

## ---------------------------------------------------------------------------------- ##
## 	  Script p/ remover diretorios, grupos, usuários e permissões       	      ##
##	  Scritp - iacrm.sh, Versão 1.0, 26/07/2022		      		      ##
##	  Certique-se do arquivo ter permissões de execução: chmod 744	ou chmod +x   ##
## 	  p/ utilizar o Script, execute o comando: sudo ./iacrm.sh ou ./iacrm.sh      ##
## ---------------------------------------------------------------------------------- ##

## Removendo diretorios
echo "Removendo sub-diretorios..."
rm -r /public/publico
rm -r /public/adm
rm -r /public/ven
rm -r /public/sec

## Removendo grupos - ver conteudo em: cat /etc/group
echo "Removendo grupos..."
groupdel GRP_ADM
groupdel GRP_VEN
groupdel GRP_SEC

## Removendo usuarios - ver conteudo em: cat /etc/passwd
echo "Removendo usuarios..."
userdel -rf carlos
userdel -rf maria
userdel -rf joao
userdel -rf debora
userdel -rf sebastiana
userdel -rf roberto
userdel -rf josefina
userdel -rf amanda
userdel -rf rogerio

## FIM
echo "."
echo "."
echo "."
echo "	F I M  "


