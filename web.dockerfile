FROM nginx:1.10

ADD ./laravel-docker/vhost.conf /etc/nginx/conf.d/default.conf
