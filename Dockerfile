# Use the official Node.js image as base
FROM node:alpine

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install dependencies
RUN npm install

# Expose port 4200 (default port used by Angular CLI)
EXPOSE 4200

# Copy the rest of the application code
COPY . .

# Start the development server
CMD ng serve --host 0.0.0.0 --port 4200 --disable-host-check