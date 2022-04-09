# specify a base image
FROM node:alpine

WORKDIR /app

# install some dependencies
COPY ./package.json ./
RUN npm install
COPY ./index.js ./

# default command
CMD ["npm", "start"]
