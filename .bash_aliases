
alias ls="exa --icons --color=auto"
alias l="ls -al --no-user"
alias tree="ls --tree"
alias c=clear
alias v=nvim
# alias v="neovide --geometry=115x30"
alias ...="cd ../../"
alias ....="cd ../../../"
alias def="xdg-open"
alias untar="tar -xvzf"
alias glone="git clone"
alias lz=lazygit


alias pac="pacman -Slq | fzf --multi --preview 'pacman -Si {1}' | xargs -ro sudo pacman -S"
alias yayay="paru -S (paru -Slq | fzf -m)"
alias remove="pacman -Qq | fzf --multi --preview 'pacman -Qi {1}' | xargs -ro sudo pacman -Rns"
alias tt="tt -t 30 -theme one-dark"
alias font="fc-list | cut -d ':' -f2-3 | rg -i "

alias hackerman="echo 'sudo docker run -it --rm svenstaro/genact -m botnet'"
