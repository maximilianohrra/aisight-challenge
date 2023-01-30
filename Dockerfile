# Use an official lightweight Node.js runtime as the base image
FROM node:14

# Set the working directory
WORKDIR /app

# Copy the package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the source code
COPY . .

# Expose port 5000
EXPOSE 5000

# Start the app
CMD [ "node", "server.js" ]
