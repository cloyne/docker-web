FROM cloyne/nginx

MAINTAINER Mitar <mitar.docker@tnode.com>

COPY ./etc/cloyne.net /etc/nginx/sites-enabled/cloyne.net
