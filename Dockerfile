FROM php:8.2-apache
RUN apt-get update && apt-get install -y libpq-dev

RUN docker-php-ext-install pgsql pdo pdo_pgsql
COPY . /var/www/html/

WORKDIR /var/www/html


RUN a2enmod rewrite

EXPOSE 80
