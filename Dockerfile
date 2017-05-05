FROM node:boron

# Create app directory
RUN mkdir -p /opt/hubot
WORKDIR /opt/hubot

# Copy in application specific files
COPY package.json /opt/hubot/
COPY external-scripts.json /opt/hubot/

# Install node modules
RUN npm install

EXPOSE 8080
CMD [ "npm", "start" ]

