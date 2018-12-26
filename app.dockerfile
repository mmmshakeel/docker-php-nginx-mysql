FROM php:7.1-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev gnupg git zip unzip \
    mysql-client libmagickwand-dev --no-install-recommends \
    && pecl install imagick \
    && docker-php-ext-enable imagick \
    && docker-php-ext-install mcrypt pdo_mysql

# install nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs build-essential

# install composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php
RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

COPY . /var/www

WORKDIR /var/www

RUN chmod -R 777 /var/www/storage/
