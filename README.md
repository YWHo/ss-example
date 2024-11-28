## Reference

1. SilverStripe 5 with Docker Compose \
https://www.youtube.com/watch?v=uLD9nTebXLI

2. SilverStripe Lessons \
https://www.youtube.com/playlist?list=PLmp1xeBoQYsX_hyvJUufM-Jwr-Kc14lgN


## Setup

1. Setup Silverstripe through Composer (and ignore platform requirements)

```console
composer create-project silverstripe/installer ss-example --ignore-platform-reqs
```

2. Add Docker compose file to the project root folder
eg.
```yml
services:
  cms:
    image: brettt89/silverstripe-web
    volumes:
      - ./app:/var/www/html/app
      - ./public:/var/www/html/public
      - ./themes:/var/www/html/themes
      - ss-eg-vendor:/var/www/html/vendor
      - ./composer.json:/var/www/html/composer.json
    ports:
      - 9000:80
    environment:
      - DOCUMENT_ROOT=/var/www/html/public
      - SS_ENVIRONMENT_TYPE=dev
      - SS_DATABASE_CLASS=MySQLDatabase
      - SS_DATABASE_SERVER=database
      - SS_DATABASE_NAME=SS_example_db
      - SS_DATABASE_USERNAME=root
      - SS_DATABASE_PASSWORD=example6_912
      - SS_DEFAULT_ADMIN_USERNAME=admin
      - SS_DEFAULT_ADMIN_PASSWORD=c3_56jmp_456p_x943

  composer:
    image: composer
    volumes:
      - ss-eg-vendor:/var/www/html/vendor
      - ./composer.json:/var/www/html/composer.json
    working_dir: /var/www/html
    command: update

  database:
    image: mariadb
    ports:
      - 3306:3306
    environment:
      - MYSQL_ROOT_PASSWORD=example6_912
      - MYSQL_DATABASE=SS_example_db
    volumes:
      - ss-eg-dbdata:/var/lib/mysql

volumes:
  ss-eg-vendor:
  ss-eg-dbdata:
```

3. Update composer.json to specify php version (at config.platform)

eg.
```json
    "config": {
        "process-timeout": 600,
        "allow-plugins": {
            "composer/installers": true,
            "silverstripe/recipe-plugin": true,
            "silverstripe/vendor-plugin": true
        },
        "platform": {
            "php": "8.3.9",
            "ext-intl": "8.3.9"
        }
    },
```

4. In terminal, type `docker compose up -d` to build and run the containers

5. After composer inside the docker container finished running, visit the running site at `http://localhost:9000`


## Lessons:

1. Theme: Create 'one-ring' theme
  - Create a new folder named `one-ring` inside `themes` directory and add the corresponding subfolders
  - Add a new Silverstripe template file named `Page.ss` inside `themes\one-ring\templates`.
  - Update `app/_config/theme.yml` to replace `simple` with `one-ring`
  - Add `?flush=1` to the URL to flush the cache and load the new theme. \
  eg.
  ```
     http://localhost:9000/?flush=1
  ```

2. Public: Add static folder
  - Create a new folder named 'static' inside `public`. Then, add the corresponding files and folders
  - Visit `http://localhost:9000/static/default.html` and `http://localhost:9000/static/home.html`

