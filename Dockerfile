# Use the official ultra-lightweight alpine-based Nginx image
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy our single-page application into the default Nginx public directory
COPY index.html /usr/share/nginx/html/index.html

# Expose port 80 to access the web server outside the container
EXPOSE 80

# Run Nginx in the foreground
CMD ["nginx", "-g", "daemon off;"]
