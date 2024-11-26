#!/usr/bin/env bash
set -e
echo "		###  Установка Vagrant и Virtualbox и Extension Pack  ####"
sudo apt update && sudo apt install -y vagrant virtualbox virtualbox-ext-pack 
echo "		###  Инициализация Vagrant  ###"
sleep 30
vagrant init
echo "		###  Заменяем Vagrantfile из git репозитория  ###"
cp ~/Git/DeusOps-id240126/Light/Vagrantfile ~/Vagrant/Vagrantfile
echo "		###  Запуск Vagrant  ###"
vagrant up
