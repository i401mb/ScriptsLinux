#!/bin/bash

echo "Creating directories:"

mkdir /adm
mkdir /public
mkdir /sec
mkdir /ven

echo "Creating groups:"

groupadd GRP_ADM
groupadd GRP_SEC
groupadd GRP_VEN

echo "Creating users:"

useradd amanda -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senhasenha) 
useradd carlos -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senhasenha)
useradd debora -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senhasenha)
useradd joao -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senhasenha)
useradd josefina -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senhasenha)
useradd maria -m -s /bin/bash -G GRP_ADM -p $(openssl passwd -crypt senhasenha)
useradd roberto -m -s /bin/bash -G GRP_VEN-p $(openssl passwd -crypt senhasenha)
useradd rogerio -m -s /bin/bash -G GRP_SEC -p $(openssl passwd -crypt senhasenha)
useradd sebastiana -m -s /bin/bash -G GRP_VEN -p $(openssl passwd -crypt senhasenha)

echo "Creating permissions"

chown root:GRP_ADM /adm
chown root:GRP_SEC /ven
chown root:GRP_VEN /sec

chmod 770 /adm
chmod 770 /public
chmod 770 /sec
chmod 770 /ven
