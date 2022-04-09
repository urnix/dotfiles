#!/bin/bash
set -e

script_dir="$PWD"

# Rosetta (For Apple Silicon (M1) CPUs only)
if [[ $(uname -p) == 'arm' ]]; then
  sudo softwareupdate --install-rosetta
fi

echo '▶️  Installing Brew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
if [[ $(uname -p) == 'arm' ]]; then
  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
else
  echo 'eval "$(/usr/local/bin/brew shellenv)"' >> ~/.zprofile
fi
eval "$($(brew --prefix)/bin/brew shellenv)"
echo '✅ Brew installation complete \n'

echo '▶️  Installing Apps with Brew...'
brew bundle
echo '✅ Apps installation complete \n'

echo '▶️  Installing Node.js via NVM...'
# Put NVM dir into .zshrc
echo '
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix)/opt/nvm/nvm.sh" ] && \. "$(brew --prefix)/opt/nvm/nvm.sh" # This loads nvm
[ -s "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" ] && \. "$(brew --prefix)/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion

# place this after nvm initialization!
autoload -U add-zsh-hook
load-nvmrc() {
  local node_version="$(nvm version)"
  local nvmrc_path="$(nvm_find_nvmrc)"

  if [ -n "$nvmrc_path" ]; then
    local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

    if [ "$nvmrc_node_version" = "N/A" ]; then
      nvm install
    elif [ "$nvmrc_node_version" != "$node_version" ]; then
      nvm use
    fi
  elif [ "$node_version" != "$(nvm version default)" ]; then
    echo "Reverting to nvm default version"
    nvm use default
  fi
}
add-zsh-hook chpwd load-nvmrc
load-nvmrc' >> ~/.zshrc
source ~/.zshrc
# Install Node.js
nvm install node
npm i -g yarn
echo '✅ Node.js installation complete \n'

echo '▶️  Configuring custom Urnix theme for Oh-my-zsh...'
cd "$script_dir"
cp -R oh-my-zsh-theme/* ~/.oh-my-zsh/custom/
awk '{sub("ZSH_THEME=\"robbyrussell\"","#ZSH_THEME=\"robbyrussell\"\nZSH_THEME=\"urnix\"")}1' ~/.zshrc > ~/temp.txt && mv ~/temp.txt ~/.zshrc && rm -f ~/temp.txt
mkdir ~/dev && cd ~/dev
echo 'cd ~/dev' >> ~/.zshrc # Set ~/dev as default dir to open in terminal
source ~/.zshrc
echo '✅ Configuration complete \n'

echo '🎉 If you see this message, then its all done\n\n'