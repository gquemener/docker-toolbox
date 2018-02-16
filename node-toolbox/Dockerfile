FROM node:9.5-alpine

RUN apk update
RUN apk add python make g++ # Required by the ethers-cli package

RUN apk add git

ENV NPM_CONFIG_PREFIX=/home/node/.npm-global
ENV PATH="/opt/gtk/bin:${PATH}:${NPM_CONFIG_PREFIX}/bin"

WORKDIR /app
USER node

RUN npm install -g jshint jshint-json ethers-cli
RUN npm install -g truffle
RUN npm cache clean --force

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["node"]
