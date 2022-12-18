FROM node:alpine

WORKDIR /usr/app

COPY ./package*.json ./

RUN apk add g++ make py3-pip curl && npm install && rm -rf /var/cache/apk/*

COPY . .

EXPOSE 80

CMD ["npm", "run", "start"]