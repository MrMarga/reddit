FROM node:20-alpine3.17

WORKDIR /reddit-clone

COPY . /reddit-clone

RUN  npm install -g npm@10.1.0

EXPOSE 3000

CMD ["npm","run","dev"]


