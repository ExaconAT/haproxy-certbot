#!/bin/bash
SITES=(xxx.xxx.com yyy.yyy.com)
EMAIL=your@email.com

for DOMAIN in "${SITES[@]}"
do
        /usr/bin/certbot certonly --standalone --agree-tos --non-interactive -m $EMAIL -d $DOMAIN --preferred-challenges http --http-01-port 54321

        # move to the correct let's encrypt directory
        cd /etc/letsencrypt/live/$DOMAIN
        cat fullchain.pem privkey.pem > /etc/haproxy/certs/$DOMAIN.pem
done
# reload haproxy
/etc/init.d/haproxy reload
