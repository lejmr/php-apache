FROM debian:stable
MAINTAINER Miloš Kozák <milos.kozak@lejmr.com>


RUN apt-get update && apt-get -y install php5 php5-mysql && apt-get clean && rm -rf /var/lib/apt/lists/*
RUN /usr/sbin/a2dismod 'mpm_*' && /usr/sbin/a2enmod mpm_prefork
ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2
RUN /usr/sbin/a2enmod rewrite
COPY default-site.conf /etc/apache2/sites-enabled/000-default.conf

COPY httpd-foreground /usr/bin/
RUN chmod +x /usr/bin/httpd-foreground

EXPOSE 80
CMD ["/usr/bin/httpd-foreground"]
