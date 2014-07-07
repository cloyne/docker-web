#/bin/bash -e

mkdir -p /srv/var/log/web
mkdir -p /srv/var/log/dockergen
chown nobody:nogroup /srv/var/log/dockergen

docker run -d -p 80:80/tcp --name web -h web.web.server2.docker -v /var/run/docker.sock:/docker.sock -v /srv/var/log/web:/var/log/nginx -v /srv/var/log/dockergen:/var/log/dockergen cloyne/web
