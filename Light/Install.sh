#!/usr/bin/env bash
set -e
echo "		###  Установка Vagrant и Virtualbox и Extension Pack  ####"
sudo apt install -y vagrant virtualbox virtualbox-ext-pack 
echo "		###  Инициализация Vagrant  ###"
vagrant init
echo "		###  Заменяем Vagrantfile из git репозитория  ###"
cp ~/Git/DeusOps-id231206/Light/Vagrantfile ~/Vagrant/Vagrantfile
