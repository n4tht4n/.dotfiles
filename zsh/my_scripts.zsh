#!/bin/zsh

# Add stuff, as needed... 😉

### loads and shows all tmuxp configs to start a session ###
ftmuxp() {
  if [[ -n $TMUX ]]; then
    return
  fi

  # using 'exa' would always yield the target of symlinks, need to get rid of that
  ID="$(ls $XDG_CONFIG_HOME/tmuxp | cut -d ' ' -f1 | sed -e 's/\.yml$//')"
  if [[ -z "$ID" ]]; then
    tmux new-session
  fi

  create_new_session="Create New Session"

  ID="${create_new_session}\n$ID"
  ID="$(echo $ID | fzf | cut -d ' ' -f1)"

  if [[ "$ID" = "${create_new_session}" ]]; then
    tmux new-session
  elif [[ -n "$ID" ]]; then
    # TODO: check howto tell Kitty the session name!?
    tmuxp load "$ID"
  fi
}

