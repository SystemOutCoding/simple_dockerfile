#FROM enoniccloud/apache2-letsencrypt:latest
MAINTAINER JunHyun Bae <junhyun.bae@cloudmt.co.kr>

FROM httpd:2.4

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data
ENV APACHE_LOG_DIR /var/log/apache2

ADD apache2.conf /etc/apache2/apache2.conf
COPY ./wwwroot /var/www/html
EXPOSE 80 443

ENTRYPOINT ["/usr/sbin/apache2"]
CMD ["-D", "FOREGROUND"]
