# Stage 1: Build the project
FROM ubuntu:latest AS builder

# Update apt and install necessary dependencies, including curl, npm, and python
RUN apt-get update && apt-get upgrade -y && apt-get install -y git python3 python3-pip make build-essential curl npm

# Install 'n' package globally to manage Node versions
RUN npm install -g n

# Install Node.js LTS version (iron)
RUN n i iron

# Install the latest npm version
RUN npm install -g npm
RUN corepack enable

# Install mkdocs-techdocs-core in the virtual environment
RUN pip3 install mkdocs --break-system-packages
RUN pip3 install mkdocs-techdocs-core --break-system-packages

# Set the working directory to /app
WORKDIR /app

# Install Yarn version 4.4.1
RUN yarn set version 4.4.1

# Install project dependencies (this step is where caching is important)
COPY package.json yarn.lock ./
RUN yarn install

# Copy the rest of the project files (this will trigger a rebuild if the project files change)
COPY . .

# Expose the port for the frontend (default 3000)
EXPOSE 3000

# Run the project
CMD ["yarn", "run", "dev"]
