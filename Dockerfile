FROM node:7.5.0

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY ./package.json /usr/src/app/
RUN npm install supervisor -g
# RUN npm install -g feathers-cli

# RUN npm install
RUN rm -rf node_modules && npm install && npm cache clean && rm -rf ~/.npm

COPY . /usr/src/app

EXPOSE 3000
CMD [ "npm", "start" ]
