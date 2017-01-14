#!/bin/bash

docker build -t php-apache:5.2 . \
    && docker rm develict
#docker run -p 80:80 -v /Users/milos/Dropbox/Projekty/Dockerovani/php-apache/build/develict-5.4/web/develict.com/htdocs/:/var/www/html --name=develict php-apache:5.2

docker run -p 80:80 --name=develict php-apache:5.2