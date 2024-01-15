FROM node:14-slim

RUN npm i npm@latest mocha@latest -g


WORKDIR /App

COPY package.json ./

RUN npm install

COPY . ./

CMD [ "npm", "run", "watch" ]