#!/usr/bin/env bash
set -e
cd /tmp
mkdir /tmp/Vagrant
echo "		###  Установка Vagrant  Virtualbox  Extension Pack  ####"
sleep 5
sudo apt update && sudo apt install -y vagrant virtualbox virtualbox-ext-pack 
echo "		###  Инициализация Vagrant  ###"
sleep 5
cd /tmp/Vagrant/ 
vagrant init

echo "		###  Заменяем Vagrantfile из git репозитория  ###"
sleep 5
rm -f /tmp/Vagrant/Vagrantfile && cp ~/DeusOps-id240126/Light/Vagrantfile /tmp/Vagrant/Vagrantfile

echo "		###  Запуск Vagrant  ###"
sleep 2
vagrant up
