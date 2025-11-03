FROM php:8.2-apache

COPY . /var/www/html/

RUN docker-php-ext-install pgsql pdo pdo_pgsql
WORKDIR /var/www/html

RUN a2enmod rewrite

EXPOSE 80
