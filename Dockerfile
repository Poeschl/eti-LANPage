FROM docker.io/alpine:3.22 as build

RUN apk add --no-cache git

WORKDIR /tmp/build
RUN git clone https://github.com/eti-lan/LANPage.git LANPage

# Remove unnecessary files
RUN rm -rf LANPage/.git \
    && rm -rf LANPage/_screenshots \
    && rm -rf LANPage/_ssl

# Remove IP address from index since php is only retrieving the docker ip
RUN sed -i '/<div class="jumbotron">/,/<\/div>/d' /tmp/build/LANPage/index.php

FROM docker.io/php:7.2-apache as runtime
WORKDIR /var/www/html

# Use repository configs as default
COPY --from=build --chown=www-data /tmp/build/LANPage /var/www/html
COPY --chown=www-data deploy/config/* /var/www/html/
