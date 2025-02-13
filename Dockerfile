# Use a Node.js base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy the rest of the app files
COPY . .

# Build the app (if needed)
RUN npm run build

# Expose the port
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
