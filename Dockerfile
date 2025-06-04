FROM docker.io/alpine:3.22 as build

RUN apk add --no-cache git curl

WORKDIR /tmp/build
RUN git clone https://github.com/eti-lan/LANPage.git LANPage

# Remove unnecessary files
RUN rm -rf LANPage/.git \
    && rm -rf LANPage/_screenshots \
    && rm -rf LANPage/_ssl

# Use the dark theme
COPY customize/bootstrap-darkly.css /tmp/build/LANPage/assets/bootstrap.css

# Add the latest launcher setup file to the build
RUN curl -o /tmp/build/LANPage/dl/launcher-setup.msi https://www.eti-lan.xyz/get/launcher-setup.msi

# * Remove IP address from index since php is only retrieving the docker ip
# * Make download buttons primary
# * Add attribution to the footer
RUN sed -i '/<div class="jumbotron">/,/<\/div>/d' /tmp/build/LANPage/index.php && \
  sed -i 's/btn btn-warning/btn btn-primary/g' /tmp/build/LANPage/inc.dl.php && \
  sed -i 's/<small>powered by.*<\/small>/<small>powered by <a href="https:\/\/www.eti-lan.xyz">eti-lan.xyz<\/a> and <a href="https:\/\/poeschl.xyz">Poeschl<\/a><\/small>/g' /tmp/build/LANPage/inc.menu.php

FROM docker.io/php:7.2-apache as runtime
WORKDIR /var/www/html

# Use repository configs as default
COPY --from=build --chown=www-data /tmp/build/LANPage /var/www/html
COPY --chown=www-data deploy/config/* /var/www/html/
