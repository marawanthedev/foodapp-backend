# Use a specific version of Node.js
FROM node:17.4.0-alpine

# Set the working directory
WORKDIR /app

# Copy the package.json file and install dependencies
COPY package.json .
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000
EXPOSE 3000

# Start the application
CMD ["npm", "run", "start:dev"]
