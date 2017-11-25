# About this Repo

Docker image for php-fpm. For dev purpose only, not ready for prod.

This image installs the following additional software:

* Composer
* Cron
* Drush
* GD
* Git
* Gulp
* Intl
* Mcrypt
* Mysql-client
* Nodejs
* PDO Mysql
* Ssmtp
* Vim
* Yarn
* ZIP

## Available PHP.ini settings and their default values.

Change these environment variable on your local docker image configuration to pimp php.

* PHP_DATE_TIMEZONE 'Europe/Paris'
* PHP_MAX_EXECUTION_TIME '3000'
* PHP_MAX_INPUT_TIME '60'
* PHP_MAX_INPUT_VARS '3000'
* PHP_MEMORY_LIMIT '1024M'
* PHP_ERROR_REPORTING 'E_ALL & ~E_DEPRECATED & ~E_STRICT'
* PHP_DISPLAY_ERRORS 'Off'
* PHP_DISPLAY_STARTUP_ERRORS 'Off'
* PHP_LOG_ERRORS 'On'
* PHP_POST_MAX_SIZE '64M'
* PHP_UPLOAD_MAX_FILESIZE '64M'
* PHP_MAX_FILE_UPLOADS '20'
* PHP_OPCACHE_ENABLE '0' (impacts web + CLI)
* PHP_OPCACHE_MEMORY_CONSUMPTION '64'
