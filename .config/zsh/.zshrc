export XDG_CONFIG_HOME="$HOME/.config/"
export XDG_CACHE_HOME="$HOME/.cache/"



export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'

#--------------------------------------------
# Alias
#--------------------------------------------

alias ls="ls --color -F"


#--------------------------------------------
# Key bindings
#--------------------------------------------
bindkey "^[[3~" delete-char


#--------------------------------------------
# Autocompletion
#--------------------------------------------

autoload -Uz compinit
zstyle ':completion:*' menu select


#------------------------------
# History file
#------------------------------
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt SHARE_HISTORY

#--------------------------------------------
# History search
#--------------------------------------------

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search


#--------------------------------------------
# Them
#--------------------------------------------

autoload -Uz promptinit && promptinit

# Define costum theme
prompt_frozentheme_setup() {
  PS1="%~%# "
}

# Add the theme to promptsys
prompt_themes+=( frozentheme )

# Load the theme
prompt default
