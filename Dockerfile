FROM debian

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install nginx -y && apt-get install tor -y && apt-get install openssh-server -y
COPY srcs/sshd_config /etc/ssh/
COPY srcs/nginx.conf /etc/nginx/
COPY images/ /var/www/html/images/
COPY index.html /var/www/html/
COPY srcs/ /var/www/html/srcs/
COPY srcs/torrc /etc/tor/

ENTRYPOINT service ssh start; service nginx start; tor
