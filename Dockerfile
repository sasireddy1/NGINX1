FROM ubuntu:latest
RUN apt update && apt upgrade && apt install -y nginx
COPY ./nolo/* /var/www/html/
COPY ./conf /etc/nginx/sites-enabled/
RUN service nginx restart
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

