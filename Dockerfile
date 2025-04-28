FROM nginx:alpine

# Copy tetris.html to the default nginx web root
COPY tetris.html /usr/share/nginx/html/index.html

# Append UTF-8 charset setting to the default Nginx config
RUN echo "charset utf-8;" >> /etc/nginx/conf.d/default.conf

# Set environment variable to specify the port
ENV PORT 8095

# Expose the default port
EXPOSE 80
