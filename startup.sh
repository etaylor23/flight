sudo su
amazon-linux-extras install nginx1.12 -y
wget -O /etc/nginx/conf.d/default.conf https://raw.githubusercontent.com/etaylor23/flight/master/default.conf
sudo rm /etc/nginx/nginx.conf
wget -O /etc/nginx/nginx.conf https://raw.githubusercontent.com/etaylor23/flight/master/nginx.conf
chkconfig nginx on
service nginx start
amazon-linux-extras install epel -y
yum install varnish -y
wget -O /etc/varnish/default.vcl https://raw.githubusercontent.com/etaylor23/flight/master/default.vcl
wget -O /etc/varnish/varnish.params https://raw.githubusercontent.com/etaylor23/flight/master/varnish.params
systemctl start varnish