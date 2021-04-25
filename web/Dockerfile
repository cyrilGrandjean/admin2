FROM php:apache

RUN docker-php-ext-install pdo pdo_mysql
COPY ./000_default.conf /etc/apache2/sites-enabled 
COPY ./b2b/ /var/www/html/b2b
COPY ./site_statique/ /var/www/html/site_statique

