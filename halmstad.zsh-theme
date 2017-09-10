# --------------------
# General
# --------------------
local return_status="%{$fg[red]%}%(?..⏎)%{$reset_color%} "
local current_dir='%{$terminfo[bold]$fg[blue]%}%~%{$reset_color%}'
local git_branch='$(git_prompt_info)%{$reset_color%}'
local current_time="%{$fg_bold[green]%}%*%{$reset_color%}"

if [[ $UID -eq 0 ]]; then
    local user_host=' %{$terminfo[bold]$fg[red]%}%n@%m%{$reset_color%}'
    local user_symbol='%B#%b'
else
    local user_host=''
    local user_symbol='%B$%b'
fi

# --------------------
# Git stuff
# --------------------
ZSH_THEME_GIT_PROMPT_PREFIX=" 🌿  %{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[red]%} ✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} ✚"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ✹"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} ✭"

# --------------------
# Prompts
# --------------------
PROMPT="${current_time}${user_host} ${current_dir}${git_branch}
${user_symbol} "
RPROMPT='${return_status}$(git_prompt_status)%{$reset_color%}'
