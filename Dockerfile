# Use official Node.js 18 image as the base
FROM node:24-slim

# Create app directory inside the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the app’s source code
COPY . .

# Expose port 3000 to the outside world
EXPOSE 8080

# Run the app
CMD ["npm", "start"]
