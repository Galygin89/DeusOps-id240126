#! /usr/bin/env bash
set -e

cd ~ && mkdir 2048 && cd 2048

git clone https://gitfront.io/r/deusops/JnacRhR4iD8q/2048-game.git && cd 2040-game

npm install --include=dev

npm run build

npm start
