FROM nginx:stable-alpine
VOLUME /usr/share/nginx/html
COPY default.conf /etc/nginx/conf.d/default.conf
COPY nginx.conf /etc/nginx/nginx.conf
COPY *.html /usr/share/nginx/html/

RUN chmod -R 777 /usr/share/nginx/html
