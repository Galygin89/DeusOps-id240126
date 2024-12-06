FROM node:16.20.2-slim AS build

WORKDIR /app

RUN apt-get update \
  && apt-get install -y git \
  && git clone https://gitfront.io/r/deusops/JnacRhR4iD8q/2048-game.git .

COPY package*.json ./  
RUN npm install --include=dev

COPY . .

RUN npm run build

FROM nginx:alpine

COPY --from=build /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
