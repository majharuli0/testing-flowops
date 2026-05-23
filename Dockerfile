# syntax=docker/dockerfile:1
FROM node:20-alpine

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

EXPOSE 3000

ENV NODE_ENV=development

CMD ["sh", "-c", "npm start"]