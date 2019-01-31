function gco -d "Select from branches and checkout" -w 'git checkout'
  if test -n "$argv"
    git checkout $argv
  else
    git branch -a | fzf | xargs echo | sed 's/^remotes\/origin\///' | xargs git checkout
  end
end
