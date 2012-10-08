
function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '± >' && return
    echo '>'
}


PROMPT='%{$fg[blue]%}%n%{$reset_color%} @ %{$fg[yellow]%}%m%{$reset_color%} = %{$fg_bold[red]%}$(collapse_pwd)%{$reset_color%}$(git_prompt_info) 
$(prompt_char) '

RPROMPT='[%D{%H:%M:%S}]'

ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""
