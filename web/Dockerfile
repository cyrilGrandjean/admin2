FROM php:apache

RUN docker-php-ext-install pdo pdo_mysql
COPY ./sites_woody.conf/ /etc/apache2/sites-available
COPY ./b2b/ /var/www/html/b2b
COPY ./site_statique/ /var/www/html/site_statique
RUN a2dissite 000-default.conf
RUN a2ensite sites_woody.conf

RUN a2dissite 000-default.conf
RUN a2ensite sites_woody.conf

