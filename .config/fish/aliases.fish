# Custom aliases

alias c=clear
alias cls="clear;ls"
alias v="nvim"
alias sl="ls"
alias l="ls -al --color=auto"
alias cat="bat"
alias ls="lsd"
alias tree="ls --tree"
alias tt="tt -t 30"
alias def="xdg-open"
alias pacman="pacman -Slq | fzf -m --preview 'cat <(pacman -Si {1} | psub) <(pacman -Fl {1} | awk {print $2}| psub)' | xargs -ro sudo pacman -S"


# Old aliases
alias aup="pamac upgrade --aur"
alias grubup="sudo update-grub"
alias fixpacman="sudo rm /var/lib/pacman/db.lck"
alias tarnow='tar -acf '
alias untar='tar -zxvf '
alias wget='wget -c '
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias upd='sudo reflector --latest 5 --age 2 --fastest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist && cat /etc/pacman.d/mirrorlist && sudo pacman -Syu && fish_update_completions'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

