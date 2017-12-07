# haproxy-certbot
Auto create and renewal script


This script will download new Let's Encrypt certificates, automatically renew them and put it in the right format for HAProxy + reload. Script will be executed every 2:30 hours.

Install

  1. Install certbot
  2. Move script to /usr/local/bin/renew.sh
  3. chmod +x /usr/local/bin/renew.sh
  4. sudo crontab -e
     30 2 * * * /usr/local/bin/renew.sh >> /var/log/le-renewal.log
     
Configure HAProxy
  1. Add the lines from haproxy.cfg without "..."
   
Create new SSL Certificate and enable auto renewal

  1. nano /usr/local/bin/renew.sh
  2. Add domain with space in "SITES"

