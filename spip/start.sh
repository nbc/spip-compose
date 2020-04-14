#!/bin/sh

chown -R www-data:www-data /var/www/html/* && \
    chown www-data:www-data /var/www/html/.htaccess && \
    chmod -R g+w /var/www/html/* && \
    apache2-foreground
