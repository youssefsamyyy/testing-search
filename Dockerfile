# Use Nginx as a web server
FROM nginx:alpine

# Copy your HTML file into Nginx's default directory
COPY index.html /usr/share/nginx/html/index.html

# Make sure Nginx listens on port 8080 (Cloud Run requirement)
RUN sed -i 's/80/8080/' /etc/nginx/conf.d/default.conf

# Run Nginx
CMD ["nginx", "-g", "daemon off;"]
