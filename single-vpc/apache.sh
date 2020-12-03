#!/bin/bash

yum install -y httpd
echo "hello">/var/www/html/index.html
systemctl restart httpd
