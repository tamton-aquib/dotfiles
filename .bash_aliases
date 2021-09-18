
alias ls="exa --icons --color=auto"
alias l="ls -al --no-user"
alias tree="ls --tree"
alias c=clear
alias v=nvim
alias pac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias ...="cd ../../"
alias ....="cd ../../../"
alias def="xdg-open"
alias untar="tar -xvzf"
alias glone="git clone"


alias yayay="paru -S (paru -Slq | fzf -m)"
alias tt="tt -t 30 -theme one-dark"
