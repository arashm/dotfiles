function fzf_ctrl_b -d "appends the selected branch name to the command"
  if git_is_repo
    git branch -a | fzf-tmux | xargs echo | sed 's/^remotes\/origin\///' | read -l select
    commandline -a $select
  else
    printf "\nThis is not a git repository\n\n"
    commandline -f repaint
  end
end
