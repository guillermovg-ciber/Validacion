
#Version Debian

FROM debian

#Instalamos apache y php
RUN  apt-get update &&  apt-get install -y -qq apache2 php7.3


#Directorios del servidor apache

WORKDIR /var/www/html

COPY . /var/www/html

#Habilitamos el modulo php

RUN a2enmod php7.3


#Stat

CMD ["./stat.sh"]
