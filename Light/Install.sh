#!/usr/bin/env bash
set -e
echo "		###  Установка Vagrant и Virtualbox и Extension Pack  ####"
sudo apt update && sudo apt install -y vagrant virtualbox virtualbox-ext-pack 
echo "		###  Инициализация Vagrant  ###"
cd Vagrant/
vagrant init
rm -f Vagrantfile && cp ~/DeusOps-id240126/Light/Vagrantfile ~/DeusOps-id240126/Light/Vagrant/Vagrantfile
echo "		###  Заменяем Vagrantfile из git репозитория  ###"
 ~/Vagrant/Vagrantfile
echo "		###  Запуск Vagrant  ###"
vagrant up
