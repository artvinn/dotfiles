ZSH=~/.oh-my-zsh/
ZSH_DISABLE_COMPFIX="true"
ZSH_TMUX_AUTOSTART=true

# alias
alias vim="nvim"

# theme
ZSH_THEME=powerlevel10k/powerlevel10k

# save history to disk
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

export EDITOR=/usr/bin/vim

# export locales
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

plugins=(
  z
  git
  tmux
  thefuck
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

# reload completion
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# use ripgrep in fzf
if type rg &> /dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden'
  export FZF_DEFAULT_OPTS='-m --height 50% --border' # allow multiple selections
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
