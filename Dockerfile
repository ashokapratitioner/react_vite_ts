# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install project dependencies
RUN npm install -g serve \
    && npm install

# Copy local directories to the current working directory of the Docker image
COPY ./src ./src
COPY ./dist ./dist

# Build the project
RUN npm run build

# Expose the port that the application will listen on
EXPOSE 5173

# Run the application
CMD ["serve", "-s", "build", "-l", "5173"]
