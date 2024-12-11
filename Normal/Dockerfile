# Этап сборки
FROM node:16.20.2-slim AS build

# Установим рабочую директорию
WORKDIR /app

# Устанавливаем зависимости
RUN apt-get update \
  && apt-get install -y git \
  && git clone https://gitfront.io/r/deusops/JnacRhR4iD8q/2048-game.git .
# Копируем package.json и package-lock.json
COPY package*.json ./  
RUN npm install --include=dev

# Копируем остальные файлы проекта
COPY . .

# Собираем проект
RUN npm run build

# Этап финального образа
FROM nginx:alpine

# Копируем собранные файлы из предыдущего этапа
COPY --from=build /app/dist /usr/share/nginx/html

# Экспонируем порт
EXPOSE 80

# Запускаем Nginx
CMD ["nginx", "-g", "daemon off;"]
