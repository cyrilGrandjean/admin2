FROM php:apache

RUN docker-php-ext-install pdo pdo_mysql pdo_pgsql
COPY ./public-html/ /var/www/html/

