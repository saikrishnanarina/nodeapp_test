FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

COPY /opt/deploy/saikrishna ./

EXPOSE 3000
CMD [ "node", "index.js" ]
