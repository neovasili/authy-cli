FROM node:10.16.0-alpine AS authy

RUN npm install --global authenticator-cli

CMD [ "authenticator" ]