FROM node:22.15.0-alpine3.20

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

EXPOSE 5003

CMD ["node", "./src/server.js"]