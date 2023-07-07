FROM php:8.2-apache

RUN docker-php-ext-install pdo_mysql

COPY --from=composer /usr/bin/composer /usr/bin/composer
COPY config/php.ini /usr/local/etc/php/
