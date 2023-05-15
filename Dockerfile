FROM mrgabri/perfect-php:7.4-fpm-alpine3.13

RUN apk add --no-cache \
    git \
    zsh \
    openssh \
    php7-pecl-xdebug

COPY config/php/php.ini /etc/php7/conf.d/custom.ini

# Install composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"