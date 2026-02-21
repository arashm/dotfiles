function gdb -d "Compare current branch with given/development branch"
  if test -n "$argv"
    git diff $argv..(git_branch_name)
  else
    git diff development..(git_branch_name)
  end
end
