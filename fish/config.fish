source $HOME/.asdf/asdf.fish
source /usr/share/autojump/autojump.fish

set -gx EDITOR vim
set -gx GEM_EDITOR vim
set -gx LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"
set -gx LESS ' -R '
#set -gx TERM xterm-256color
set -gx RUST_SRC_PATH /home/arashm/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
set -gx WORKON_HOME $HOME/.pyenvs
set -gx GOPATH $HOME/.gocode
set -gx PASSWORD_STORE_DIR $HOME/.config/password-store
set -U FZF_TMUX 1

if status --is-interactive
  set -gx LANG en_US.utf8
  set -gx LC_ALL en_US.utf8
  set -gx LC_CTYPE en_US.utf8
end

set PATH $HOME/.rbenv/shims $HOME/.rbenv/bin $GOPATH/bin $HOME/.cargo/bin $HOME/.mix/escripts (yarn global bin) $PATH

#
## Aliases #
#

# Apps
alias ysg="yard server --gems -d"
alias devdocs='cd ~/workspace/devdocs; and bundle exec rackup -D -p 9090; and cd -'

# Fish
alias rfish='source ~/.config/fish/config.fish'
alias efish='vim ~/.config/fish/config.fish'

# Other Aliases
alias grep="grep --color=auto"
# alias less="less -N"
alias less="bat"
alias open='xdg-open'
alias tmux='tmux -2'
alias s='sudo'
alias p='sudo pacman --color=auto'
alias pss='pacman -Ss --color=auto'
alias pu='pacman -Syu --color=auto'
alias y='pikaur'
alias yss='pikaur -Ss'
alias passf='pass clip --fzf'

status --is-interactive; and source (rbenv init -|psub)

# Greetings!
function fish_greeting
  # If not in tmux, then run tmux!
  #if test -z "$TMUX"
    #tmux
  #end

  figlet ArashM | glitchcat -d 300 -s 50
end