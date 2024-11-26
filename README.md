Уровень Light
1. Разверните виртуальную машины с linux: game01. Можно использовать любые способы создания, например в Яндекс Облаке или локально на Vagrant
2. Установите и настройте nginx на виртуальную машину “game01”. Настроить сервер в качестве proxy на localhost
3. Разверните на виртуальной машину Игру и настройте nginx для открытия сайта с игрой
4. Создайте linux system unit отвечающий за запуска сервиса с игрой
5. Сделайте простейшую автоматизацию для настройки сервера: bash-скрипты либо vagrant provisioning
 -  Этапы развертывания(Ubuntu22.04):
       - На развернутой Ubuntu 22.04 Запустить в терминале git clone https://github.com/Galygin89/DeusOps-id240126.git и перейти в каталог cd DeusOps-id240126/Light/
       - Из скаченого репо делаем файл исполняемым sudo chmod +x Install.sh и следом sudo ./Install.sh
       - Принять лицензионное соглашение от virtualbox-ext-pack
       - Выбираем все устаревшие службы которые нужно перезагрузить
   

Уровень Normal
1. Написать Dockerfile для игры (проект использует node16), нужно сделать образ легковесным через мультистейджинг
2. Установить на “game01” Docker и запустить игру в контейнере. Настроить работу контейнера без внешнего nginx
3. Написать gitlab-ci пайплайн для автоматической сборки и публикации Docker-образа с приложением
4. Написать ansible-роль “docker”, для установки docker. Роль должна проходить тесты molecule
5. Написать ansible-playbook настраивающий сервер game01, как в уровне Light-5, и темплейт system unit запускающий docker-контейнер с нужным нам приложением
6. Добавить в gitlab-ci шаг с деплоем приложения на сервера. Ansible-роли должны находиться в отдельных репозиториях и работать через ansible-galaxy
7. Увеличить количество серверов до трёх и настроить распределение входящих запросов через haproxy 


Уровень Hard
1. Развернуть в облаке kubernetes-кластер и настроить ingress для доступа извне
2. Создать helm-чарт для деплоя приложения в kubernetes-кластер
3. Масштабировать приложение на несколько реплик и настроить балансировку
4. Доработать пайплайн для автоматического развертывания приложения в kubernetes-кластер
