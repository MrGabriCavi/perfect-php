FROM php:7.4-fpm-alpine3.13

RUN apk add --no-cache \
    autoconf \
    build-base \
    curl \
    gcc \
    g++ \
    pcre-dev \
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
    php7-igbinary \
    php7-imap \
    php7-intl \
    php7-ldap \
    php7-mbstring \
    php7-mysqli \
    php7-openssl \
    php7-pdo \
    php7-pdo_mysql \
    php7-pdo_pgsql\
    php7-phar \
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

RUN pecl install redis \
    && echo extension=redis.so > /usr/local/etc/php/conf.d/redis.ini

RUN apk del -f \
    gcc \
    g++ 

WORKDIR /app

# Configure PHP and enable extensions
RUN echo "[Date]\ndate.timezone=\"UTC\"\n" > /usr/local/etc/php/conf.d/01-custom.ini \
    && echo "[BC Math]\nextension=/usr/lib/php7/modules/bcmath.so\n" > /usr/local/etc/php/conf.d/02-bcmath.ini
#COPY config/php/php.ini /usr/local/etc/php/conf.d/custom.ini


#php7-pgsql \
#php7-redis \
