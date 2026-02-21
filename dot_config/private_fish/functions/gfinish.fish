function gfinish -d "merge the current branch to development"
  if not git_is_repo
    printf "Not a git repository\n"
    commandline -f repaint
    return
  end

  set current_branch_name (git_branch_name)

  if test "$current_branch_name" = 'development'; and test -z "$argv"
    printf "Can't merge development into development\n"
    commandline -f repaint
    return
  else if test "$current_branch_name" != 'development'
    echo "==========="
    git checkout development
    echo "==========="
  end

  if test -n "$argv"
    set branch_name (string split '/' "$argv")
    git "$branch_name[1]" finish "$branch_name[2]"
  else
    set branch_name (string split '/' "$current_branch_name")
    echo $branch_name
    git "$branch_name[1]" finish "$branch_name[2]"
  end

  git push
end
