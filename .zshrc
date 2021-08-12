HISTFILE=~/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
setopt appendhistory

PROMPT='%U%F{51}%n%f%u:%~%f '

source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias l='colorls --group-directories-first --almost-all'
alias ll='colorls --group-directories-first --almost-all --long' # detailed list view
function precmd () {
    window_title="\\033]0;${PWD##*/}\\007"
    echo -ne "$window_title"
}

# Set Spaceship ZSH as a prompt
autoload -U promptinit; promptinit
prompt spaceship

alias ls='colorls'
