# Plugin Manager
ZSH_PLUGINS_CACHE=${ZDOTDIR:-$HOME}/.zsh_plugins.zsh
ZSH_PLUGINS="
getantidote/use-omz

ohmyzsh/ohmyzsh path:lib
ohmyzsh/ohmyzsh path:plugins/archlinux
ohmyzsh/ohmyzsh path:plugins/bgnotify
ohmyzsh/ohmyzsh path:plugins/colored-man-pages
ohmyzsh/ohmyzsh path:plugins/colorize
ohmyzsh/ohmyzsh path:plugins/copyfile
ohmyzsh/ohmyzsh path:plugins/copypath
ohmyzsh/ohmyzsh path:plugins/command-not-found
ohmyzsh/ohmyzsh path:plugins/emoji-clock
ohmyzsh/ohmyzsh path:plugins/extract
ohmyzsh/ohmyzsh path:plugins/git
ohmyzsh/ohmyzsh path:plugins/magic-enter
ohmyzsh/ohmyzsh path:plugins/sudo

mattmc3/ez-compinit
mattmc3/zfunctions
zdharma-continuum/fast-syntax-highlighting kind:defer
zsh-users/zsh-autosuggestions
zsh-users/zsh-completions kind:fpath path:src
zsh-users/zsh-history-substring-search
"

fpath=(/usr/share/antidote/functions $fpath)
autoload -Uz antidote

if [[ ! ${ZSH_PLUGINS_CACHE} -nt ${ZSH_PLUGINS} ]]; then
  echo "$ZSH_PLUGINS" | antidote bundle >| "${ZSH_PLUGINS_CACHE}"
fi

source ${ZSH_PLUGINS_CACHE}

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
eval "$(oh-my-posh init zsh --config ${HOME}/.config/oh-my-posh/config.omp.json)"
