FROM node:10-alpine

WORKDIR /usr/app 

COPY package.json /usr/app 

RUN yarn global add nodemon

RUN yarn

ADD . /usr/app 

EXPOSE 8080

CMD ["nodemon", "index.js"]