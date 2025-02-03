FROM node:18

WORKDIR /usr/src/app 

COPY package*. ./

RUN npm install 

COPY . . 

EXPOSE 5000 

CMD ["npm","run","start"]