#!/bin/bash

docker build -t php-apache:5.2 . \
    && docker rm develict
docker run -p 80:80 -v /Users/milos/Dropbox/Projekty/Dockerovani/php-apache/legacy/develict:/var/www/html --name=develict php-apache:5.2

#docker run -p 80:80 --name=develict php-apache:5.2