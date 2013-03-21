# Load local config files
for config_file in $(ls ~/.*.zsh)
do
  source $config_file
done

# Aliases
alias vim="~/bin/mvim -v"

# Rbenv Caveats
# Enabling shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# TODO: Function for getting into dev directory and projs quickly
# TODO: Show current branch
# TODO: Show current ruby
