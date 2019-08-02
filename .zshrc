ZSH=~/.oh-my-zsh/
ZSH_TMUX_AUTOSTART=true

# theme
ZSH_THEME=powerlevel10k/powerlevel10k

# save history to disk
HISTFILE=$HOME/.zsh_history
HISTSIZE=100000
SAVEHIST=$HISTSIZE

export EDITOR=/usr/bin/vim

# export locales
export LANG="en_US.UTF-8"
export LC_CTYPE="en_US.UTF-8"

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

# show available tmux sessions
if [[ -z $TMUX ]]; then
    sessions=$( tmux ls 2> /dev/null | awk '! /attached/ { sub(":", "", $1); print $1; }' | xargs echo )
    if [[ ! -z $sessions ]]; then
        echo "==> Available tmux sessions: $sessions"
    fi
    unset sessions
fi
