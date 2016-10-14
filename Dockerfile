FROM php:5.6-fpm

ADD php.ini /usr/local/etc/php/php.ini

RUN apt-get update

# Git
RUN apt-get install -y git

# Intl
RUN apt-get install -y libicu-dev && docker-php-ext-install intl

# PDO Mysql
RUN apt-get install -y libpq-dev && docker-php-ext-install pdo_mysql

# ZIP
RUN apt-get install -y zlib1g zlib1g-dev && docker-php-ext-configure zip --with-zlib-dir="/usr" && docker-php-ext-install zip

# Vim
RUN apt-get install -y vim

# mcrypt
RUN apt-get install -y libmcrypt-dev && docker-php-ext-install mcrypt

# GD
RUN apt-get install -y libgd3 libfreetype6-dev libjpeg62-turbo-dev libpng12-dev && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && docker-php-ext-install gd
RUN docker-php-ext-install exif mbstring

# Mail stuff
RUN apt-get install ssmtp mailutils -y
ADD ssmtp.conf /etc/ssmtp/ssmtp.conf

# Drupal Drush
RUN apt-get install drush -y
RUN apt-get install mysql-client -y

# Create aliases
RUN echo 'alias ll="ls -la"' >> ~/.bashrc
RUN echo 'alias vi="vim"' >> ~/.bashrc

# Commands with curl should be last

# Composer
RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer

# Front stuff
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g gulp -y

# Drupal Console
#RUN curl https://drupalconsole.com/installer -L -o drupal.phar \
#    && mv drupal.phar /usr/local/bin/drupal \
#    && chmod +x /usr/local/bin/drupal \
#    && drupal init --override \
#    && drupal check

# Memcached
#RUN apt-get install -y libmemcached-dev
#RUN git clone -b php7 --single-branch https://github.com/php-memcached-dev/php-memcached /usr/src/php/ext/memcached
#RUN cd /usr/src/php/ext/memcached \
#  && docker-php-ext-configure memcached \
#  && docker-php-ext-install memcached

# X-Debug
#RUN pecl install xdebug