FROM kfinteractive/php-nginx:latest

MAINTAINER KFI pw@kf-interactive.com

RUN curl -sS https://getcomposer.org/installer | php && mv composer.phar /usr/local/bin/composer &&  /usr/local/bin/composer self-update

ENV HOME /usr/share/nginx/html/ 
ENV COMPOSER_HOME $HOME/.composer
RUN export PATH="$HOME/.composer/vendor/bin:$PATH"

ADD config/etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf

ADD . /usr/share/nginx/html/

WORKDIR /usr/share/nginx/html/
