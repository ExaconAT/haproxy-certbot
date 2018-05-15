# haproxy-certbot
Auto create and renewal script


This script will create and automatically update Let's Encrypt certificates and put it in the right format for HAProxy. 
Script will be executed every day @ 2:30 am and HAProxy does an reload.

Install

  1. Install certbot
  2. Move script to /usr/local/bin/renew.sh
  3. chmod +x /usr/local/bin/renew.sh
  4. sudo crontab -e
     30 2 * * * /usr/local/bin/renew.sh >> /var/log/le-renewal.log
     
Configure HAProxy
  1. Add the lines from haproxy.cfg without "..."
   
Create a new SSL Certificate and enable auto renewal
  1. nano /usr/local/bin/renew.sh
  2. Add domains with space in "SITES" eg. (domain1.com domain2.com domain3.com)
  
Remove Domain from HAproxy
  1. remove Domain from HAProxy
  2. remove Domain from /usr/local/bin/renew.sh
  3. run /usr/local/bin/renew.sh
  
Working perfectly.
