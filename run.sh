#/bin/bash -e

mkdir -p /srv/var/log/web
mkdir -p /srv/var/log/dockergen

docker run -d --restart=always -p 80:80/tcp --name web --hostname web -v /srv/var/hosts:/etc/hosts:ro -v /var/run/docker.sock:/docker.sock -v /srv/var/log/web:/var/log/nginx -v /srv/var/log/dockergen:/var/log/dockergen -v /srv/council/meteor/storage:/council-storage cloyne/web
