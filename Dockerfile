# Use the official Nginx image from Docker Hub
FROM nginx:alpine

# Set a working directory inside the container
WORKDIR /usr/share/nginx/html

# Copy your HTML and CSS files into the container's working directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to allow access to the server
EXPOSE 80

# Start Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
