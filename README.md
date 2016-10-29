# README #

This is an Apache image including PHP5 and mod_rewrite support. In order to use this image effectively, you'll need to mount:

- /var/www/html for your site content (e.g. using "-v /home/jdoe/mysite/:/var/www/html/")
- /var/log/apache2, optionally, if you want to store logfiles visibly outside the container


## Simple Examples ##

Assuming you have your content at /home/jdoe/mysite/, the below will be sufficient to serve it. Note that many Docker users encourage mounting data from a storage container, rather than directly from the filesyetem.

- "It works!": `docker run -p 80:80 -d lejmr/php-apache` and browse to the host's IP address using http