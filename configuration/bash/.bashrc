# Node Version Manager installation

export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# NPM Global Path Installation
if [ -x "$(command -v npm)" ]; then
  export PATH="$(npm config get prefix):$PATH"
fi

# Yarn Global Path Installation
if [ -x "$(command -v yarn)" ]; then
  export PATH="$(yarn global bin):$PATH"
fi
