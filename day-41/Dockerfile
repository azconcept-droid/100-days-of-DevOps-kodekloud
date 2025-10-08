FROM ubuntu:24.04

# Install Apache2
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean

# Change Apache to listen on port 6000
RUN sed -i 's/Listen 80/Listen 6000/' /etc/apache2/ports.conf

# Expose port 6000
EXPOSE 6000

# Start Apache in foreground
CMD ["apachectl", "-D", "FOREGROUND"]
