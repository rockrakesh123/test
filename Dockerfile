# Base image
FROM node:18-alpine

# Set working directory inside the container
WORKDIR /app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy rest of the application
COPY . .

# Expose port (change it based on your app)
EXPOSE 3000

# Command to run your app
CMD ["npm", "start"]
