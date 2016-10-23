FROM node:4-onbuild

# Create app directory
RUN mkdir -p /usr/src/matador-bull-ui
WORKDIR /usr/src/matador-bull-ui

# Install app dependencies
COPY package.json /usr/src/matador-bull-ui
RUN npm install

# Bundle app source
COPY . /usr/src/matador-bull-ui

EXPOSE 1337
CMD [ "npm", "start" ]
