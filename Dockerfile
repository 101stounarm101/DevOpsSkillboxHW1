FROM node:alpine

RUN mkdir /app

COPY package.json /app

WORKDIR /app
RUN yarn install

COPY . /app

RUN yarn build

EXPOSE 3000

CMD yarn start