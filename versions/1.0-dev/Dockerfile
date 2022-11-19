FROM mrgabri/perfect-php:1.0

RUN apk add --no-cache \
    git \
    zsh \
    openssh \
    php8-xdebug

COPY config/php/php.ini /etc/php8/conf.d/custom.ini

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
