#term
export TERM=xterm-256color

#Homebrew
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH="/home/linuxbrew/.linuxbrew/opt/postgresql@16/bin:$PATH"

#nvim
alias vi="nvim"

#Server
alias sauron="ssh admin@100.107.7.96"

#Dev
alias dev="cd ~/Developer/"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

eval "$(starship init zsh)"
export EDITOR="nvim"
export VISUAL="nvim"
