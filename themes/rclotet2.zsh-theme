if [ $UID -eq 0 ]; then NCOLOR="red"; else NCOLOR="green"; fi
local return_code="%(?..%{$fg[red]%}%? ↵%{$reset_color%})"

# primary prompt
PROMPT='$FG[255]╭─ $FG[032]%~\
$(git_prompt_info)
$FG[255]╰─▶%{$reset_color%}  '
PROMPT2='%{$fg[red]%}\ %{$reset_color%}'
RPS1='${return_code}'


# color vars
eval my_gray='$FG[247]'
eval my_orange='$FG[214]'
eval my_green='$FG[070]'

# right prom
RPROMPT='$my_gray%*%{$reset_color%}%'

# git settings
ZSH_THEME_GIT_PROMPT_PREFIX="$FG[075] "
ZSH_THEME_GIT_PROMPT_CLEAN=" $my_green✔%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" $my_orange✚%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
