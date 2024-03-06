FROM public.ecr.aws/docker/library/almalinux:latest

RUN yum update -y
RUN yum install -y httpd

COPY index.html /var/www/html/

EXPOSE 80

CMD ["/usr/sbin/httpd", "-DFOREGROUND"]