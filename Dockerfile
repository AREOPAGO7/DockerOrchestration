FROM node:18-slim

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
COPY package.json package-lock.json ./
RUN npm install

# Copy source files
COPY . .

# Expose port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]
