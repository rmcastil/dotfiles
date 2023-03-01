# dotfiles
My dotfiles built from the ground up. Several of the things that I use:
* NVIM as my VIM editor.
* Zsh as my shell.
* Brew as my package manager.
* asdf as my tool manager (rubies, nodes, etc).

## Setup
Run and see `bin/setup` for getting everything up and running with a new Mac. It will
* link dotfiles to the home directory.
* install xcode-select.
* install homebrew.
* install homebrew packages.
* install nvim and instructions for installing vim plugins.

## Ruby Setup
Use asdf to manage your rubies by adding the ruby plugin

```
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
```

To get Ruby LSP working you'll have to gem install the following gems for each Ruby
you install with asdf.
* gem install bundler
* gem install solargraph
* gem install solargraph-rails

## Node Setup
Use asdf to manage your different nodes

```
asdf plugin add nodejs https://github.com/asdf-vm/asdf-nodejs.git
```

Make sure you also install yarn

```
npm install --globarl yarn
```

## Updates

### Vim plugins

To update your VIM plugins from VIM via minpac. NOTE that minpac utilizes git so
if this process does not work you can go to each plugin in the
`.config/nvim/pack/minpac/start` directory and do a `git fetch; git pull` from
there.

1. Call `source plugin.vim` which is located in the `.config/nvim` directory.
2. Call `call minpac#update()` to update the sourced plugins.


## Personal Prereqs
I usually use this when setting up a new mac.

1. Installation of XCode. Note that it has to be opened at least once
to complete it's installation.
2. Go through each setting for new configurations

