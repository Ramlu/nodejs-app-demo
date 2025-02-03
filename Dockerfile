FROM node:18-alpine as build-stage

WORKDIR /app 

COPY package*.json ./

RUN npm install --production

COPY . . 

FROM node:18-alpine as production-stage 

WORKDIR /app 

COPY --from=build-stage /app /app 

EXPOSE 5000 

CMD ["npm","run","start"]


