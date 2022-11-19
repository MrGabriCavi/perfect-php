#!/bin/bash

DOCKER_IMAGE=${1}
COMPOSER_COMMAND=${@:2}

docker run -i -v `pwd`:/app:delegated --rm -w /app --name perfect-php-nginx-composer ${DOCKER_IMAGE} ${COMPOSER_COMMAND}
