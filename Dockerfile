# Use an official Node.js runtime as the base image
# The 'alpine' version is much smaller and more secure
FROM node:20-alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json (and package-lock.json if you generate one)
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the rest of your application code (server.js, etc.)
COPY . .

# Expose the port your app runs on, matching server.js and nodejsapp.yaml
EXPOSE 3000

# Start the application using the script defined in package.json
CMD [ "npm", "start" ]
