FROM node:latest

WORKDIR /usr/src/app

COPY package*.json ./

COPY /opt/deploy/saikrishna ./

RUN npm install

COPY . .

EXPOSE 3000
CMD [ "node", "index.js" ]
