FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    libzip-dev \
    zip \
    unzip \
    git \
    curl \
    wget \
    vim \
    nano \
    openssh-client \
    && docker-php-ext-install pdo pdo_mysql mysqli mbstring intl opcache \
    && docker-php-ext-enable pdo_mysql

COPY php.ini /usr/local/etc/php/php.ini
COPY upload /var/www/html/upload