# Rbenv Caveats
# Enabling shims and autocompletion
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Load local config files
for config_file in $(ls ~/.*.zsh)
do
  source $config_file
done
