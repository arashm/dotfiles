function gca -d "Alias for git commit --amend"
  if test -n "$argv"
    git commit --amend $argv
  else
    git commit --amend .
  end
end
