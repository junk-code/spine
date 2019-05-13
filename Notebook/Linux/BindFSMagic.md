# BindFS Magic (Apache doc root secure access)

https://web.archive.org/web/20180422200034/http://blog.netgusto.com/solving-web-file-permissions-problem-once-and-for-all/

Goals:
  Keep /var/www/html secure
  Give Apache Read and Execute permissions (and applicable write where needed).
  Give Developers full permissions to server files, but nobody else.

Method:

bindfs#/var/www/html /home/victor/www fuse force-user=victor,force-group=victor,create-for-user=www-data,create-for-group=www-data,create-with-perms=god=rx:ud=rwx:gof=r:uf=rw,chgrp-ignore,chown-ignore,chmod-ignore 0 0
bindfs#/var/www/html /home/ortega/www fuse force-user=ortega,force-group=ortega,create-for-user=www-data,create-for-group=www-data,create-with-perms=god=rx:ud=rwx:gof=r:uf=rw,chgrp-ignore,chown-ignore,chmod-ignore 0 0
bindfs#/var/www/html /home/lgrove/www fuse force-user=lgrove,force-group=lgrove,create-for-user=www-data,create-for-group=www-data,create-with-perms=god=rx:ud=rwx:gof=r:uf=rw,chgrp-ignore,chown-ignore,chmod-ignore 0 0

## For permissions that match defaults:

replace:
create-with-perms=0770

with:
create-with-perms=god=rx:ud=rwx:gof=r:uf=rw

Source:
https://stackoverflow.com/questions/9133024/www-data-permissions