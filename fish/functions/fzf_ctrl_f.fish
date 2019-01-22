function fzf_ctrl_f -d "append commit id to command line text"
  if git_is_repo
    git log --oneline | fzf-tmux | xargs echo | grep -Eo '^[0-9a-z]{7}' | read -l select
    commandline -a $select
  else
    printf "\nThis is not a git repository\n\n"
    commandline -f repaint
  end
end
