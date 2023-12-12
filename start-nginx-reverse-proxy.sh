/bin/bash

set -e


# for debugging:
# docker run --mount type=bind,source="$(pwd)/nginx.conf",target=/etc/nginx/nginx.conf,readonly  --name tmp-nginx-container -p 80:80 -p 443:443 --rm nginx nginx-debug -g 'daemon off;'

docker run --mount type=bind,source="$(pwd)/nginx.conf",target=/etc/nginx/nginx.conf,readonly  --name tmp-nginx-container -p 10.116.0.27:80:80 -p 10.116.0.27:443:443 --rm -d nginx
