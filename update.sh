# https://apple.stackexchange.com/a/290723/448532

softwareupdate --install --all
(brew update && brew upgrade && brew cleanup && brew doctor)
#mas upgrade # https://github.com/mas-cli/mas
npm update -g
#(pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U)
(pip3 list --format=freeze | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip3 install -U)
#(gem update --system && gem update && gem cleanup) # https://github.com/rbenv/rbenv
(sudo gem update --system && sudo gem update && sudo gem cleanup)
omz update # https://ohmyz.sh/
#(cd ~/.vim_runtime && git pull --rebase) # https://github.com/amix/vimrc
