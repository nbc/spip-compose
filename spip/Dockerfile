FROM ipeos/spip:3.2.12

COPY ./start.sh /

RUN apt-get update && apt-get install -y libxslt1-dev && \
	docker-php-ext-install xsl

RUN echo "umask 002" >> /etc/apache2/envvars && chmod +x /start.sh

CMD ["/start.sh"]
