PROMPT='%U%F{51}%n%f%u:%~%f '
# Navigate the a folder where we can download the zsh-syntax-highlighting script
# Note: if the zsh folder does not exists in /usr/local/share, just create it
# cd /usr/local/share/zsh
# Clone the zsh-syntax-highlighting repo
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
# Add a startup script to your .zshrc to enable syntax highlighting in new shell sessions
# echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc

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
