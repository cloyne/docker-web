FROM cloyne/nginx-proxy

MAINTAINER Mitar <mitar.docker@tnode.com>

COPY ./etc/sites-enabled/cloyne.net /etc/nginx/sites-enabled/
