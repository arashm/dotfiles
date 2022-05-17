set -gx EDITOR vim
set -gx GEM_EDITOR vim
set -gx LESSOPEN "| /usr/bin/src-hilite-lesspipe.sh %s"
set -gx LESS ' -R '
# set -gx TERM xterm-256color
set -gx RUST_SRC_PATH /home/arashm/.rustup/toolchains/stable-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src
set -gx WORKON_HOME $HOME/.pyenvs
set -gx GOPATH $HOME/.gocode
set -gx PASSWORD_STORE_DIR $HOME/.config/password-store
set -U FZF_TMUX 1
set -gx ANDROID_HOME $HOME/Public/android_sdk/
set -gx ANDROID_SDK_ROOT $HOME/Public/android_sdk/
set -gx VOLTA_HOME "$HOME/.volta"

if status --is-interactive
  set -gx LANG en_US.utf8
  set -gx LC_ALL en_US.utf8
  set -gx LC_CTYPE en_US.utf8

  alias grep="grep --color=auto"
  alias less="bat"
  alias open='xdg-open'
  alias tmux='tmux -2'
  alias s='sudo'
  alias p='sudo pacman --color=auto'
  alias pss='pacman -Ss --color=auto'
  alias pu='pacman -Syu --color=auto'
  alias y='paru'
  alias yss='paru -Ss'
  alias passf='pass clip --fzf'
  alias c='clear'
  alias vi='nvim'
  alias vim='nvim'

  source $HOME/.asdf/asdf.fish
  source (rbenv init -|psub)
end

set -x PATH $HOME/.rbenv/shims $HOME/.rbenv/bin $HOME/.cargo/bin $HOME/.mix/escripts (yarn global bin) $HOME/Public/flutter/bin "$VOLTA_HOME/bin" $PATH

# Greetings!
function fish_greeting
  figlet ArashM | glitchcat -d 300 -s 50
end
