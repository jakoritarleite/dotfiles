function nemo
    command nemo $argv > /dev/null 2>&1 & disown
end
