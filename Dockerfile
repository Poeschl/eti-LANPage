FROM docker.io/php:7.2-apache

WORKDIR /var/www/html/
COPY . /var/www/html/

# Set permissions
RUN chmod 0755 db/*.db \
    && chmod 0755 competition/data

# Copy samples if no config is present
RUN [ ! -f 'config.php' ] && cp config.sample.php config.php \
    && [ ! -f 'dl.xml' ] && cp dl.sample.xml dl.xml \
    && [ ! -f 'faq.xml' ] && cp faq.sample.xml faq.xml \
    && [ ! -f 'servers.xml' ] && cp servers.sample.xml servers.xml \
    && [ ! -f 'launcher.ini' ] && cp launcher.sample.ini launcher.ini

