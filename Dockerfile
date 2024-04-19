# Use the official Node.js image as the base image (--platform=linux/amd64 if you are going to build docker image on EC2 aws that use Ubuntu)
FROM --platform=linux/amd64 node:latest

#Set the working directory in the container to /app
WORKDIR /app

# Copy package.json and package.lock.json files to the working directory
COPY package*.json ./

# Install application dependencies
RUN npm install

#Copy the entire application code to the working directory
COPY . .

#Expose the port the application will run on
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
