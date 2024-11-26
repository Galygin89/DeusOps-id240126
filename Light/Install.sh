#!/usr/bin/env bash
set -e
cd /tmp
mkdir /tmp/Vagrant
echo "		###  Установка Vagrant и Virtualbox и Extension Pack  ####"
sudo apt update && sudo apt install -y vagrant virtualbox virtualbox-ext-pack 
echo "		###  Инициализация Vagrant  ###"
cd /tmp/Vagrant/ 
vagrant init

echo "		###  Заменяем Vagrantfile из git репозитория  ###"
rm -f /tmp/Vagrant/Vagrantfile && cp ~/DeusOps-id240126/Light/Vagrantfile /tmp/Vagrant/Vagrantfile

echo "		###  Запуск Vagrant  ###"
vagrant up
