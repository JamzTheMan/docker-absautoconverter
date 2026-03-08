FROM node:20-alpine

LABEL org.opencontainers.image.source="https://github.com/JamzTheMan/docker-absautoconverter"
LABEL org.opencontainers.image.description="Audiobookshelf Auto Converter"

WORKDIR /app

COPY package.json package.json
COPY index.js index.js

RUN npm install --production

CMD [ "node", "index.js" ]
