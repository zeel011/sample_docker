# Use Node.js official image from the Docker Hub
FROM node:16

# Create and set the working directory
WORKDIR /usr/src/app

# Copy the package.json and package-lock.json files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the project files
COPY . .

# Expose the port the app runs on (usually 3000 for React or Node.js apps)
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]
