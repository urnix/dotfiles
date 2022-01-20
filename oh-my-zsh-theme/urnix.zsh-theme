local return_code='%(?..%{$fg[red]%}%? ↵%{$reset_color%})'
local current_dir='%{$terminfo[bold]$fg[green]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'

PROMPT="${current_dir} ${git_branch}
$ "
RPS1="${return_code}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"

alias yu="yarn upgrade-interactive --latest"
alias gst="git status -sb"
