fpath=($ZDOTDIR/external $fpath)

[[ ! -f ${ZDOTDIR}/aliases ]] || source ${ZDOTDIR}/aliases

### personal scripts/functions ###
source $ZDOTDIR/my_scripts.zsh

### Auto Completion ###
autoload -Uz compinit; compinit
_comp_options+=(globdots) # with hidden files
source $ZDOTDIR/external/completion.zsh

### Prompt ###
# kube_ps1 must be intalled separately via `brew install kube-ps1`!
source $HOMEBREW_REPOSITORY/opt/kube-ps1/share/kube-ps1.sh
autoload -Uz prompt_setup.zsh; prompt_setup.zsh

### vim mode ###
bindkey -v
export KEYTIMEOUT=1
autoload -Uz cursor_mode.zsh; cursor_mode.zsh

### fzf ###
if [ $(command -v "fzf") ]; then
  source $HOMEBREW_REPOSITORY/opt/fzf/shell/completion.zsh
  source $HOMEBREW_REPOSITORY/opt/fzf/shell/key-bindings.zsh
fi


# Is there something special for this machine?
[[ ! -f ${ZDOTDIR}/.zsh_machine_specific ]] || source ${ZDOTDIR}/.zsh_machine_specific

