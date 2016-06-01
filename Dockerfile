# FROM: Base image from which you are building.
# Latest LTS version of node
FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install all dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source code
COPY . /usr/src/app

# Bind to port 3000
EXPOSE 3000

# Command yo run app using cmd: npm start
CMD ["node", "server/server.js"]
