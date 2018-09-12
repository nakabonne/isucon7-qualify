#!/bin/bash
set -e

cd /home/isucon/isubata
git pull

sudo cp etc/nginx.conf /etc/nginx/nginx.conf

cd /home/isucon/isubata/webapp/go
make

sudo /usr/sbin/nginx -t
sudo service nginx reload

sudo service isubata.golang restart

echo ""
echo "$(tput setaf 2)Restart Succeeded!!! ✔︎$(tput sgr0)"
