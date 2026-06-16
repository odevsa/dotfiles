if status is-interactive
# Commands to run in interactive sessions can go here
end

set -U fish_greeting

# Aliases
alias sudo="sudo "
alias ls="lsd"
alias la="lsd -la"
alias tree="lsd --tree"
alias cat="bat --style=auto"
alias update-repos="sudo -v && echo 'Searching...' && sudo reflector --latest 10 --sort rate --save /etc/pacman.d/mirrorlist &> /dev/null && echo 'Repositories updated!'"
alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -R"

# Oh-My-Posh
oh-my-posh init fish --config ~/.config/oh-my-posh/config.omp.json | source