FROM apline:3.13

# Install apache
RUN apk add httpd
# Expose the default httpd port 80
EXPOSE 80
# Run httpd
CMD ["/usr/sbin/httpd", "-DFOREGROUND"]