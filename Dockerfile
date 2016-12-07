FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install
RUN npm install -g pm2

# Expose port so app can communicate with outside world
EXPOSE 3800

# Start the app
CMD [ "npm", "start" ]
