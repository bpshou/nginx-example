#!/bin/bash

docker run -d \
    -p 80:80 \
    --name nginx \
    -v /Users/origin/www/banana/nginx/:/etc/nginx/ \
    -w /etc/nginx/ \
    openresty/openresty /usr/bin/openresty -c /etc/nginx/nginx.conf -g 'daemon off;'
