# Utilisation de l'image php avec le tag apache car l'extension mod_php est préinstallée et gère le php 
FROM php:apache

# Installation de l'extension PDO qui permet de se connecter à la bdd 
RUN docker-php-ext-install pdo pdo_mysql

# Copie de la configuration des virtual hosts dans le fichier de configuration des virtualhosts apache
COPY ./sites_woody.conf/ /etc/apache2/sites-available
# Copie du site dynamique dans le fichier www d'apache création d'un dossier b2b  
COPY ./b2b/ /var/www/html/b2b
# Copie du site statique (html) dans le fichier www d'apache création d'un dossier site_statique
COPY ./site_statique/ /var/www/html/site_statique

# Désactiver la configuration des virtualhosts par défaut
RUN a2dissite 000-default.conf
# Activer la configuration des virtualhosts Woodytoys
RUN a2ensite sites_woody.conf

