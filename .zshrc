ZSH=~/.oh-my-zsh/
ZSH_TMUX_AUTOSTART=true

# theme
ZSH_THEME=powerlevel10k/powerlevel10k

# save history to disk
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

export EDITOR=/usr/bin/vim

plugins=(
  z
  git
  tmux
  colored-man-pages
  zsh-autosuggestions
  zsh-syntax-highlighting
  zsh-completions
)

# reload completion
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh
export TERM="xterm-256color"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
source ~/.p10k.zsh
