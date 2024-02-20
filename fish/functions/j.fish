function j -d "zoxide alias" -w z
    if test -n "$argv"
        z $argv
    else
        zi
    end
end
