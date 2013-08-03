# Load local config files
for config_file in $(ls ~/.*.zsh)
do
  source $config_file
done

# Aliases
alias vim="~/bin/mvim -v"
alias l='ls -laG'
alias gs='git status'

# Rbenv Caveats
# Enabling shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Enable the ctrl+s key for reverse i search
stty -ixon

# Load and run compinit for zsh completion
autoload -U compinit
compinit -i

# show completion menu when number of options is at least 2
zstyle ':completion:*' menu select=2

# case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

## Command history configuration
if [ -z $HISTFILE ]; then
    HISTFILE=$HOME/.zsh_history
fi
HISTSIZE=10000
SAVEHIST=10000

setopt appendhistory
setopt extendedhistory
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history

setopt prompt_subst

# get the name of the branch we are on
function git_prompt_info() {
  ref=$(command git symbolic-ref HEAD 2> /dev/null) || \
  ref=$(command git rev-parse --short HEAD 2> /dev/null) || return
  echo "${ref#refs/heads/}"
}

PROMPT='[%1d] $(git_prompt_info)
~ '
