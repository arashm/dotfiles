set -gx EDITOR nvim
set -gx GEM_EDITOR nvim
set -gx LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"
set -gx LESS ' -R '
# set -gx TERM xterm-256color
set -gx GOPATH $HOME/.gocode
set -gx PASSWORD_STORE_DIR $HOME/.config/password-store
set -U FZF_TMUX 1
set -gx ANDROID_HOME $HOME/Public/android_sdk/
set -gx ANDROID_SDK_ROOT $HOME/Public/android_sdk/

if status --is-interactive
    set -gx LANG en_US.utf-8
    set -gx LC_ALL en_US.utf-8
    set -gx LC_CTYPE en_US.utf-8

    alias grep="grep --color=auto"
    alias less="bat"
    alias open='xdg-open'
    alias tmux='tmux -2'
    alias s='sudo'
    alias p='sudo pacman'
    alias pss='pacman -Ss'
    alias pu='sudo pacman -Syu'
    alias y='paru'
    alias yu='paru -Syu'
    alias yss='paru -Ss'
    alias c='clear'
    alias vi='nvim'
    alias vim='nvim'

    source $HOME/.asdf/asdf.fish
    ~/.rbenv/bin/rbenv init - fish | source
    zoxide init fish | source
    atuin init fish | source
end

set -x PATH $HOME/.rbenv/shims $HOME/.rbenv/bin $HOME/.cargo/bin $HOME/.mix/escripts (yarn global bin) $HOME/Public/flutter/bin $PATH

bind \cb fzf_ctrl_b
bind \cf fzf_ctrl_f

# Greetings!
function fish_greeting
    figlet ArashM
end
