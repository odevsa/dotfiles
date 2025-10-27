# Plugin Manager
source ~/.antigen/antigen.zsh

antigen use oh-my-zsh

antigen bundle git
antigen bundle themes
antigen bundle bgnotify
antigen bundle archlinux
antigen bundle colored-man-pages
antigen bundle colorize
antigen bundle command-not-found
antigen bundle emoji-clock
antigen bundle sudo

antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions

antigen apply

# ENVs
export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Aliases
alias sudo="sudo "
alias ls="eza --icons"
alias la="eza --icons -la"
alias cat="bat --style=auto"
alias update-repos="sudo -v && echo 'Searching...' && sudo reflector --latest 10 --sort rate --save /etc/pacman.d/mirrorlist &> /dev/null && echo 'Repositories updated!'"
alias update="sudo pacman -Syu"
alias install="sudo pacman -S"
alias remove="sudo pacman -R"

# Oh-My-Posh
eval "$(oh-my-posh init zsh --config ${HOME}/.config/oh-my-posh/config.omp.json)"
