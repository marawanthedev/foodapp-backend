# needed for node building
FROM node:17-alpine

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# default for react 
EXPOSE 3000

# each item is a word in the command
CMD ["npm","run","start:dev"]