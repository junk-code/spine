This folder contains some handy config files.

You will likely want to SymLink these files to their appropreate places.

## SymLinks

```bash
# File:
ln -s /path/of/original.file /where/link/lives.file
# Directory:
ln -s /path/to/directory/ /path/where/link/lives/
```

## VIM
```

ln -s ./.vim ~/.vim
ln -s ./.vimrc ~/.vimrc
ln -s ./.viminfo ~/.viminfo

```

## Karabiner
```

ln -s ./karabiner.json ~/.config/karabiner/

Note: You may need to remove an existing ~/.config/karabiner.json file

```