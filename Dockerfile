# Use official Node.js runtime as the base image
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json first (for better caching)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of your app’s source code
COPY . .

# Expose port 3000 (or whatever port your app listens on)
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
