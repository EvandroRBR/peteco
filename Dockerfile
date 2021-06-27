FROM node:14.17.1-alpine3.13

RUN apk update && apk add bash

WORKDIR /app

COPY ./package.json ./

RUN npm install

COPY . .

EXPOSE 3333

CMD ["npm", "run", "dev"]
