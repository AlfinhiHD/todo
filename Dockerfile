# Base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock (if using yarn)
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --production --silent

# Copy the application code
COPY . ./

# Build the React application
RUN yarn build

# Expose the desired port (e.g., 80 for HTTP)
EXPOSE 8080

# Start the React application
CMD ["yarn", "start"]
