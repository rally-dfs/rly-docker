FROM node:alpine

RUN npm install -g rly-cli@latest

ENTRYPOINT ["rly-cli"]