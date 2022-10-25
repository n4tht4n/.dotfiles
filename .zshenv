# This file will be put in $HOME/.zshenv to allow bootstrapping of zsh from $HOME/.config/zsh...
# ...without changing something outside of my $HOME dir
# See: https://stackoverflow.com/a/46962370

export XDG_CONFIG_HOME="$HOME/.config"
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"

# Now switch to $HOME/.config stuff
source $ZDOTDIR/.zshenv

