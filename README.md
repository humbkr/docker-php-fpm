# About this Repo

This is the Git repo of the Docker [official image](https://docs.docker.com/docker-hub/official_repos/) for [php](https://registry.hub.docker.com/_/php/). See [the Docker Hub page](https://registry.hub.docker.com/_/php/) for the full readme on how to use this Docker image and for information regarding contributing and issues.

The full readme is generated over in [docker-library/docs](https://github.com/docker-library/docs), specifically in [docker-library/docs/php](https://github.com/docker-library/docs/tree/master/php).

See a change merged here that doesn't show up on the Docker Hub yet? Check [the "library/php" manifest file in the docker-library/official-images repo](https://github.com/docker-library/official-images/blob/master/library/php), especially [PRs with the "library/php" label on that repo](https://github.com/docker-library/official-images/labels/library%2Fphp). For more information about the official images process, see the [docker-library/official-images readme](https://github.com/docker-library/official-images/blob/master/README.md).

## Available PHP.ini settings and their default values.
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
* PHP_OPCACHE_ENABLE '0'