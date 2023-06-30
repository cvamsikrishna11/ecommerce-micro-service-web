# Use a base image with Nginx
FROM nginx

# Install Git to clone the repository
RUN apt-get update

#bsite content to the Nginx HTML directory
COPY server2/ /usr/share/nginx/html/

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start Nginx when the container is launched
CMD ["nginx", "-g", "daemon off;"]