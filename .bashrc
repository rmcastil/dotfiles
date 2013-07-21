# Load local config files
for config_file in $(ls ~/.*.zsh)
do
  source $config_file
done

# Aliases
alias vim="~/bin/mvim -v"
alias l='ls -laG'

# Rbenv Caveats
# Enabling shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Enable the ctrl+s key for reverse i search
stty -ixon

# Tab completion for git branches
source /usr/local/etc/bash_completion.d/git-completion.bash
