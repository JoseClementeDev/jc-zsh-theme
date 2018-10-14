# Git info
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}("
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=")%{$fg[red]%}[!]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=")%{$reset_color%}"

# Prompt
function prompt_char {
	if [ $UID -eq 0 ]; then echo "%{$fg_bold[magenta]%}#%{$reset_color%}"; else echo $; fi
}

local current_user_machine="%{$fg_bold[green]%}%n@%m%{$reset_color%}:"
local current_dir="%{$fg_bold[yellow]%}%~%{$reset_color%}"
local return_status="%(?,,%{$fg_bold[red]%}FAIL%{$reset_color%}
)"

PROMPT='${return_status}
${current_user_machine} ${current_dir} $(git_prompt_info)$(git_prompt_status)%{$reset_color%}
${$(prompt_char)} '
