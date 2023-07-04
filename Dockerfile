# the nodejs container

FROM node:alpine
WORKDIR /usr/src/app
COPY package*.json .
RUN npm ci
COPY . .
CMD [ "npm", "start" ]

# it could be also 'CMD npm start' without quoting