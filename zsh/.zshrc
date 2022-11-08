# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.config/zsh/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$XDG_CONFIG_HOME/zsh/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

### vi-mode configuration
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

# Which plugins would you like to load?
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fzf vi-mode zsh-autosuggestions zsh-syntax-highlighting kubectl)

source $ZSH/oh-my-zsh.sh

########################################################################################################################
# User configuration
########################################################################################################################

[[ ! -f ${ZDOTDIR}/aliases ]] || source ${ZDOTDIR}/aliases

source $ZDOTDIR/my_scripts.zsh

if [ $(command -v "fzf") ]; then
  source $HOMEBREW_REPOSITORY/opt/fzf/shell/completion.zsh
  source $HOMEBREW_REPOSITORY/opt/fzf/shell/key-bindings.zsh
fi

# Is there something special for this machine?
[[ ! -f ${ZDOTDIR}/.zsh_machine_specific ]] || source ${ZDOTDIR}/.zsh_machine_specific

# To customize prompt, run `p10k configure` or edit ~/.config/zsh/.p10k.zsh.
[[ ! -f ~/.config/zsh/.p10k.zsh ]] || source ~/.config/zsh/.p10k.zsh

