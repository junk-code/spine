## Install Needed Programs:
```
$ sudo yum install git zip unzip php-mbstring php-xml php-gd php-pdo php-libsodium php-soap php-zip php-opcache php-mysqlnd php-pecl-uploadprogress
```

After installing, stop and restart apache with:

`sudo apachectl stop`

`sudo apachectl start`

And your new extensions will be enabled.

## Installation Command:
composer create-project drupal-composer/drupal-project:8.x-dev ./drupal --no-interaction

will create a `drupal` directory and fill it with the needed files.

## Post Install work:

### Make SYNC directory:
In the directory that has `composer.json` make a folder called `config` and within that folder, make a folder called `sync`

#### Fix `/var/www/html/${root}/web/sites/default/files/` permissions. 
```
$ sudo chcon -R -t httpd_sys_content_rw_t /var/www/html/${root}/web/sites/default/files/

$ sudo chmod -R 777 /var/www/html/${root}/web/sites/default/files/
```
That makes SELinux happy and Linux allows everybody to play in that folder.