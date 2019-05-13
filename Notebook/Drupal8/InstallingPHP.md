# Installing PHP

And Lo, on the 13th day of May, in the year of our lord 2019 I was gifted a freshly provisioned linux box.

Birth Certificate
```bash
$ cat /etc/os-release

NAME="CentOS Linux"
VERSION="7 (Core)"
ID="centos"
ID_LIKE="rhel fedora"
VERSION_ID="7"
PRETTY_NAME="CentOS Linux 7 (Core)"
ANSI_COLOR="0;31"
CPE_NAME="cpe:/o:centos:centos:7"
HOME_URL="https://www.centos.org/"
BUG_REPORT_URL="https://bugs.centos.org/"

CENTOS_MANTISBT_PROJECT="CentOS-7"
CENTOS_MANTISBT_PROJECT_VERSION="7"
REDHAT_SUPPORT_PRODUCT="centos"
REDHAT_SUPPORT_PRODUCT_VERSION="7"
```

## Let's get going!

This fresh-faced server needs a few things before we get going, things like a copy of PHP and the like.

This link may be handy:
https://kifarunix.com/installing-php-7-3-3-on-centos-7-6/

Because the internet is constantly in flux, here is a guide to install php:

CentOS is a fine and capable distribution, the fine people that work on it created a repository of "Extra Packages" which we will need on order to get going, for that, we need:

## EPEL: Extra Packages for Enterprise Linux.

Here we have instructions on how to get it:
https://fedoraproject.org/wiki/EPEL

The basic command needed to install at the time of writing:

```shell
$ sudo yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
```

## Yum Utils
This is a set of tools that help manage the `yum` package manager's repositories. We'll likely need these tools later, especially `yum-config-manager` as used below.

```
$ sudo yum install -y yum-utils
```

## Remi Repository
This is a repository that, among other things, contains the latest PHP versions, which is handy.

```shell
$ sudo yum install http://rpms.remirepo.net/enterprise/remi-release-7.rpm
```

While it is handy on its own, by default it may have PHP 5.4 as what it would like to install, so we need to tell it to prioritize 7.3 (or what ever the latest version of PHP drupal recomends using)

Run this command to disable Remi's PHP 5.4

```
$ sudo yum-config-manager --disable remi-php54
```

and now run this to enable Remi's PHP 7.3

```
$ sudo yum-config-manager --enable remi-php73
```

## Finally installing PHP 7.3
The prep work in place, we simply install php using `yum install`:

```
$ sudo yum install php
```

Let's verify the installed version:

```
$ php --version

PHP 7.3.5 (cli) (built: Apr 30 2019 08:37:17) ( NTS )
Copyright (c) 1997-2018 The PHP Group
Zend Engine v3.3.5, Copyright (c) 1998-2018 Zend Technologies
```

Woo! Congrats Looking good so far!