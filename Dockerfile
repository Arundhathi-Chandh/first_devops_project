# Use official Node.js image
FROM node:18

# Create app directory inside container
WORKDIR /usr/src/app

# Copy package.json and install dependencies
COPY package*.json ./
RUN npm install

# Copy the rest of your app's code
COPY . .

# Expose the port
EXPOSE 3000

# Start the app
CMD ["node", "index.js"]
