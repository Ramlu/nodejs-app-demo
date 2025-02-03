FROM node:18

# This is the working directory 
WORKDIR /app 

COPY package*. ./

#This is the installation packages
RUN npm install 

#Copy the local files from local repo to container repo
COPY . . 

EXPOSE 5000 

CMD ["npm","run","start"]