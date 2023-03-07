FROM php:7.2-apache
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update -y && apt-get install -y sendmail libpng-dev
RUN docker-php-ext-install gd

RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
COPY web/ /var/www/html/
RUN useradd -ms /bin/bash admin
RUN chown -R admin:admin includes
USER admin
RUN chmod 755 includes

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]