FROM nginx

COPY flamix /usr/share/nginx/html

COPY docker.crt /etc/ssl/certs/
COPY docker.key /etc/ssl/private/

COPY default-ssl.conf /etc/nginx/conf.d/default-ssl.conf

EXPOSE 443

LABEL version=5
