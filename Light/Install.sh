#!/usr/bin/env bash
set -e

echo "		###  Создаём рабочий каталог Vagrant  ####"
sleep 5
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
rm -f /tmp/Vagrant/Vagrantfile && cp -r ~/DeusOps-id240126/Light/Vagrantfile /tmp/Vagrant/Vagrantfile
cp ~/DeusOps-id240126/Light/nginx.sh /tmp/Vagrant/ && cp ~/DeusOps-id240126/Light/2048-game.sh /tmp/Vagrant/ && cp ~/DeusOps-id240126/Light/nodejs_install_v16.sh /tmp/Vagrant/
# mkdir /tmp/vbox/ && cd /tmp/vbox/ && echo '* 0.0.0.0/0 ::/0' > /tmp/vbox/networks.conf && chmod 644 /tmp/vbox/networks.conf && mkdir /etc/vbox && mv /tmp/vbox/networks.conf /etc/vbox/
echo "		###  Запуск Vagrant  ###"
sleep 2
vagrant up
