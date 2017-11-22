# Use an official Python runtime as a parent image
FROM node:latest

# Set the working directory to /app
WORKDIR /app

COPY package.json /app

RUN npm install

# Copy the current directory contents into the container at /app
COPY . /app

ENV PORT=80
RUN npm run build
CMD ["npm", "start"]

# Make port 5000 available to the world outside this container
EXPOSE 80

