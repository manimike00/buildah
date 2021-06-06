FROM alpine:3.13

# Install apache
RUN apk add curl
# Expose the default httpd port 80
EXPOSE 80
# Run httpd
ENTRYPOINT [ "sleep" ]
CMD ["300"]