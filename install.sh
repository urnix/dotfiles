#!/bin/bash
set -e

# Rosetta (For Apple Silicon (M1) CPUs only)
sudo softwareupdate --install-rosetta

echo '▶️  Installing Brew...'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$($(brew --prefix)/bin/brew shellenv)"' >> ~/.zprofile
eval "$($(brew --prefix)/bin/brew shellenv)"
echo '✅ Brew installation complete \n'

echo '▶️  Installing Apps with Brew...'
brew bundle
# Configure Google Cloud CLI $PATH and autocomplete
#source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"¡
#source "$(brew --prefix)/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"
echo '✅ Apps installation complete \n'

#echo '▶️  Installing Node.js via NVM...'
# Put NVM dir into .zshrc
#echo 'export NVM_DIR="$HOME/.nvm"
#[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
#[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion' >> ~/.zshrc
#zsh ~/.zshrc
# Install Node.js
#nvm install node
#npm i -g yarn
#echo '✅ Node.js installation complete \n'

#echo '▶️  Configuring custom Spy4x theme for Oh-my-zsh...'
#cp -R oh-my-zsh-theme/* ~/.oh-my-zsh/custom/
#echo 'ZSH_THEME="spy4x"' >> ~/.zshrc
#echo 'source $ZSH/oh-my-zsh.sh' >> ~/.zshrc
#mkdir ~/dev && cd ~/dev
#echo 'cd ~/dev' >> ~/.zshrc # Set ~/dev as default dir to open in terminal
#zsh ~/.zshrc
#echo '✅ Configuration complete \n'
#
#echo '🎉 If you see this message, then its all done 🎉 \n\n\n'