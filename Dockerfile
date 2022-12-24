FROM node:alpine

WORKDIR /usr/app

COPY ./package*.json ./

RUN apk add g++ make jq py3-configobj py3-pip py3-setuptools python3 python3-dev curl \
  && pip3 install pathlib matplotlib pandas \
  && npm install \
  && rm -rf /var/cache/apk/*

RUN apk add --no-cache tzdata && \
  cp /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime && \
  echo "America/Sao_Paulo" > /etc/timezone

COPY . .

EXPOSE 80

CMD ["npm", "start:cron"]