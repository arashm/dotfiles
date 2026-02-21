set -gx EDITOR nvim
set -gx GEM_EDITOR nvim
set -gx LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"
set -gx LESS ' -R '
set -gx GOPATH $HOME/.gocode
set -U FZF_TMUX 1

if status --is-interactive
    set -gx LANG en_US.utf-8
    set -gx LC_ALL en_US.utf-8
    set -gx LC_CTYPE en_US.utf-8

    alias grep="grep --color=auto"
    alias less="bat"
    alias tmux='tmux -2'
    alias s='sudo'
    alias p='sudo pacman'
    alias pss='pacman -Ss'
    alias pu='sudo pacman -Syu'
    alias y='paru'
    alias yu='paru -Syu --assume-installed npm --assume-installed gnome-common --assume-installed cargo --assume-installed yarn --assume-installed rustup --assume-installed zig'
    alias yss='paru -Ss'
    alias c='clear'
    alias vi='nvim'
    alias vim='nvim'

    zoxide init fish | source
    atuin init fish | source
    mise activate fish | source
end

set -x PATH $HOME/.local/bin $HOME/.cargo/bin $HOME/.mix/escripts $PATH

# Source machine-local secrets (not tracked by chezmoi)
if test -f ~/.config/fish/secrets.fish
    source ~/.config/fish/secrets.fish
end

# Greetings!
function fish_greeting
    figlet ArashM
end
