#!/bin/sh

chown -R www-data:www-data /var/www/html/* && \
    chown www-data:www-data /var/www/html/.htaccess && \
    chmod -R g+w /var/www/html/* && \
    chmod g+w /var/www/html/htaccess.txt && \
    apache2-foreground
