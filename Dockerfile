FROM centos:7
ENV DEBIAN_FRONTEND=noninteractive
RUN yum -y install httpd
USER root
WORKDIR /var/www/html
RUN echo "lets" >> index.html
EXPOSE 80
CMD [ "httpd","-D","FOREGROUND" ]