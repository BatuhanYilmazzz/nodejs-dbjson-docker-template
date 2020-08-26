FROM node:lts-alpine

WORKDIR /api

COPY ./ .

RUN yarn
RUN npm install -g forever

CMD ["forever", "server.js"]

