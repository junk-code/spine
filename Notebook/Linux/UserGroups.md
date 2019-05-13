# UserGroups

Doing everything as root is just asking for trouble and hard times later.

We should have a user group that has access to editing files
in the server directory but nothing really else. And, only that group
should be able to access those files anyway. Let's make that happen

## Create a group called `www-data`:

```
$ sudo groupadd www-data
```

## Add the user `charlie` to the group `www-data`:

```
$ sudo usermod -a -G www-data charlie
```
[Explain Shell](https://explainshell.com/explain?cmd=sudo+usermod+-a+-G+www-data+charlie)


## See what groups `charlie` belongs to:
```
$ groups charlie
```

## See all the groups on the system:
```
$ getent group
```

## Remove `charlie` from the group `www-data`:
This one is not as easy or clean as I'd like but it works.

Step 1:
```
$ groups charlie

charlie : charlie wheel www-data
```
Note the other groups, aside from `www-data` that `charlie` is a member of.

Step 2:
```
$ sudo usermod -G charlie,wheel charlie
```

Now, on login, charlie will not be a member of `www-data` as it was not specified in the list. this means you have to be explicit as to which groups you want charlie to have when performing Step 2.