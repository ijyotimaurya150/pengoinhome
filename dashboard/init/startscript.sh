#!/bin/bash
service apache2 restart
cp -r /root/files/* /web/html/
#cp /root/files/index.html /web/html/index.html
#cp /root/files/setup-nextcloud.php /web/html/setup-nextcloud.php
chown -R www-data:www-data /web
echo "Running an useless command to keep container in fg"
tail -f /dev/null