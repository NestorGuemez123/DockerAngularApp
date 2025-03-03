FROM node:12.16.1-alpine

# Install global npm packages
RUN npm i -g @angular/cli@9

# Set working directory
WORKDIR /usr/src/app

# Copy and install local npm packages
COPY package.json* package-lock.json* ./
RUN npm install

# Copy the remaining source code
COPY . .

