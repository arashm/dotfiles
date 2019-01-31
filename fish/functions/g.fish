function g -d "Git alias. Returns 'status' if nothing passed." -w "git"
  if test -n "$argv"
    git $argv
  else
    git status
  end
end
