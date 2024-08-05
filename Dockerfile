FROM nginx:stable-alpine
VOLUME /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/404.html

RUN chmod -R 777 /usr/share/nginx/html
