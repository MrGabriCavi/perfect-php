FROM php:7.4-fpm-alpine3.13

RUN apk add --no-cache \
    curl \
    php7-bcmath \
    php7-calendar \
    php7-common \
    php7-ctype \
    php7-curl \
    php7-dom \
    php7-fileinfo \
    php7-fpm \
    php7-gd \
    php7-iconv \
    php7-imap \
    php7-intl \
    php7-ldap \
    php7-mbstring \
    php7-mysqli \
    php7-opcache \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql\
    php7-phar \
    php7-pgsql \
    php7-redis \
    php7-session \
    php7-simplexml \
    php7-sqlite3 \
    php7-sodium \
    php7-xml \
    php7-xmlreader \
    php7-xmlwriter \
    php7-tokenizer \
    php7-zip \
    php7-zlib

WORKDIR /app

# Configure PHP
COPY config/php/php.ini /etc/php7/conf.d/custom.ini
