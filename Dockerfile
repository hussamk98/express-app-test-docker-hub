FROM node:14.19.0-alpine

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install dependencies
COPY package.json .
RUN npm install

# Bundle app source
COPY . ./

# Exports
EXPOSE 5000
CMD [ "npm", "start" ]