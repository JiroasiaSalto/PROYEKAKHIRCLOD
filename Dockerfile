FROM httpd:2.4

# Remove the default Apache "It works!" page
RUN rm -rf /usr/local/apache2/htdocs/*

# Copy the contents of the 'resume' directory to Apache's document root
COPY ./resume/ /usr/local/apache2/htdocs/

# Expose port 80
EXPOSE 80

