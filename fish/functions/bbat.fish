function bbat
    set connected (bluetoothctl devices Connected)
    set connected (string split " " $connected)

    if test (count $connected) -lt 1
        if test (count $argv) -lt 1
            set device (bluetoothctl devices | fzf)
         else
            set device (bluetoothctl devices | rg -i $argv)
        end
    else
        set device $connected
    end

    if test ! -n "$device"
        echo "No device found"
        return 1
    end

    set device (string split " " $device)

    set percentage (upower --dump | rg -i $device[2] -A 8 | rg percentage | rg -o '[0-9]{1,3}')
    echo "$device[3..] battery level is $percentage%"
end
