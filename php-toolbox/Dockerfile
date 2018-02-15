FROM php:7.1-alpine

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
RUN php -r "if (hash_file('SHA384', 'composer-setup.php') === '544e09ee996cdf60ece3804abc52599c22b1f40f4323403c44d44fdfdd586475ca9813a858088ffbc1f233e9b180f061') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"
RUN php composer-setup.php --install-dir=/usr/local/bin
RUN php -r "unlink('composer-setup.php');"

RUN composer.phar global require friendsofphp/php-cs-fixer
RUN composer.phar global require psy/psysh:@stable
RUN curl --create-dirs -o /usr/local/share/psysh/php_manual.sqlite http://psysh.org/manual/en/php_manual.sqlite

RUN rm -rf /root/.composer/cache

COPY entrypoint.sh /usr/local/bin/entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
CMD ["php", "-a"]
