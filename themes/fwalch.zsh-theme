function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

PROMPT='%{$fg[magenta]%}%n%{$reset_color%}@%{$fg[blue]%}%m%{$reset_color%} %{$fg_bold[cyan]%}$(collapse_pwd)%{$reset_color%}%{$fg_bold[red]%}$(git_prompt_info)%{$fg_bold[red]%} % %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" ["
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%}] %{$fg[yellow]%}✗%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[red]%}]"
