# NGINX Static File Image

Easily host static files:

```
FROM mvpstudio/nginx-static:1
COPY ./index.html ./www/index.html
COPY ./assets ./www/assets
```

To override the nginx config:

```
COPY custom.conf /etc/nginx/conf.d/default.conf
```

Copied originally from the [official image](https://github.com/nginxinc/docker-nginx/blob/1.16.0/stable/stretch/Dockerfile).