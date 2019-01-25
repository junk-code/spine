# Hello!

Install Homebrew (see https://brew.sh/)
Install NVM (Node Version Manager) (see: https://github.com/creationix/nvm)
Install Yarn via Homebrew (see https://yarnpkg.com/lang/en/docs/install/#mac-stable)

Ensure you add this to your bash profile:
(of course this assumes that you have this repo in ~/human/spine/)

```bash
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
. "$DIR/human/spine/configuration/bash/.bash_profile"
```

Once NVM is installed, you can run `nvm install node` to install the latest version of node.
See NVM docs to see other options

Note: you may need to run `npm config set scripts-prepend-node-path true` if you get a lifecycle warning about node binary locations.