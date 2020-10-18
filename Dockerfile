FROM node:10-alpine

LABEL name="Node Express Application" \   
     summary="A Node Express application"

WORKDIR /app
EXPOSE 8080
COPY package*.json ./
RUN npm install
COPY server.js ./
CMD [ "npm", "start" ]
