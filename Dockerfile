# Use the official Node.js v18 image as the base
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and yarn.lock to the container
COPY package.json yarn.lock ./

# Install dependencies
RUN yarn install --frozen-lockfile

# Copy the entire project to the container
COPY . .

# Build the React app
RUN yarn build

# Expose the desired port
EXPOSE 4173

# Set the command to start the app
CMD ["yarn", "start"]
