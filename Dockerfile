# Base image
FROM node:latest

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock (if using yarn)
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the application code
COPY . ./

# Expose the desired port (e.g., 80 for HTTP)
EXPOSE 8080

# Start the React application
CMD ["npm", "start"]
