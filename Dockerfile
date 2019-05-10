FROM node:10.15.3-alpine

WORKDIR /temp/app

COPY ./package*.json ./

RUN npm install \
    && npm prune --production

COPY ./lib ./lib

RUN chmod -R -x *

CMD ["node", "lib/index.js"]
