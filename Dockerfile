FROM ubi8/ubi:8.3

MAINTAINER grupo14  <grupo14@fiap.com.br>

LABEL description="A custom Apache container based on UBI 8"

RUN yum install -y httpd && \
    yum clean all

RUN echo "Grupo 14 - rm340407 - " > /var/www/html/index.html

EXPOSE 80

CMD ["httpd", "-D", "FOREGROUND"]