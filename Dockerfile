FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/login
WORKDIR /usr/src/login

# Install app dependencies
COPY package.json /usr/src/login/
RUN npm install

# Bundle app source
COPY . /usr/src/login

EXPOSE 8080
CMD [ "npm", "start" ]
