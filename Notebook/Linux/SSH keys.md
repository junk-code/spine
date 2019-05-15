## Make your machine's key pair.
https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent

## Add public key to a remote server

The remote server will recognize you if you have your public key stored in its `~/.ssh/authorized_keys` plain text file. Simply append it to the file on a new line.

If this file is not where you expect it, feel free to create it with 600 permissions.

## Add it automatically

On your local machine:
```
$ ssh-copy-id user@remote-host
```