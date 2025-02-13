Use official NGINX image
FROM nginx:latest

Remove default NGINX HTML files
RUN rm -rf /usr/share/nginx/html/*

Copy your HTML files into the container
COPY html /usr/share/nginx/html

Expose port 80
EXPOSE 80

Start NGINX
CMD ["nginx", "-g", "daemon off;"]
