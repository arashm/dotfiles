function open
    if test (uname) = Darwin
        /usr/bin/open $argv
    else if test (uname) = Linux
        xdg-open $argv
    end
end
