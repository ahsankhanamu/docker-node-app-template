# Use the latest LTS (Long Term Support) version of Node
FROM  node:lts-alpine3.18

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install app dependencies
RUN npm install

# Bundle app source inside Docker image
COPY . .

# Bind the port that the app will run on
EXPOSE 3000

# Command to run the app
CMD [ "npm", "start" ]
