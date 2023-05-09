#!/bin/bash

echo "Creating directories..."

mkdir /public
mkdir /adm
mkdir /sale
mkdir /sec


echo "Creating user groups..."

groupadd GRP_ADM
groupadd GRP_SALE
groupadd GRP_SEC


echo "Creating users..."

useradd anna -m -s /bin/bash -p $(openssl passwd password123) -G GRP_ADM
useradd marry -m -s /bin/bash -p $(openssl passwd password123) -G GRP_ADM
useradd vera -m -s /bin/bash -p $(openssl passwd password123) -G GRP_ADM

useradd bia -m -s /bin/bash -p $(openssl passwd password123) -G GRP_SALE
useradd lara -m -s /bin/bash -p $(openssl passwd password123) -G GRP_SALE
useradd sarah -m -s /bin/bash -p $(openssl passwd password123) -G GRP_SALE

useradd amanda -m -s /bin/bash -p $(openssl passwd password123) -G GRP_SEC
useradd lucia -m -s /bin/bash -p $(openssl passwd password123) -G GRP_SEC
useradd paula -m -s /bin/bash -p $(openssl passwd password123) -G GRP_SEC


echo "Especifying directories permissions..."
chown root:GRP_ADM /adm
chown root:GRP_SALE /sale
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /sale
chmod 770 /sec
chmod 777 /public

echo "Finished."

