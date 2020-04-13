FROM ipeos/spip:3.2

COPY ./start.sh /

RUN echo "umask 002" >> /etc/apache2/envvars && chmod +x /start.sh

CMD ["/start.sh"]
