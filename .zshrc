# If you come from bash you might have to change your $PATH.
#export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/home/dh/.oh-my-zsh

ZSH_THEME="powerlevel9k/powerlevel9k"

plugins=(
  git,
  zsh-syntax-highlighting,
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# SSH
#export SSH_KEY_PATH="~/.ssh/rsa_id"

# POWERLEVEL9K
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(user dir vcs newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time command_execution_time newline)

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  			# This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  	# This loads nvm bash_completion

# TILIX
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

# PARITY
export PARITY_VERSIOM="stable"

# FUZZY FINDER
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
