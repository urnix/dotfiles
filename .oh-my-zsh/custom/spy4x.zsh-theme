local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local current_dir='%{$terminfo[bold]$fg[green]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local firebase_project=%{$fg[cyan]%}'$(node ~/.oh-my-zsh/custom/getFirebaseProject.js $(pwd))'%{$reset_color%}

PROMPT="${current_dir} ${firebase_project} ${git_branch}
$ "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

alias fd="firebase deploy"
alias ya="yarn add"
alias yr="yarn remove"
alias yu="yarn upgrade-interactive --latest"
alias webstorm="open -a "WebStorm.app""