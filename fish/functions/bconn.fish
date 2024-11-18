function bconn
    command systemctl start --user pulseaudio
    command rfkill unblock bluetooth

    command sleep 1

    if test (count $argv) -lt 1
        set device (bluetoothctl devices | fzf)
    else
        set device (bluetoothctl devices | rg -i $argv)
    end

    if test ! -n "$device"
        echo "No device found"
        return 1
    end

    set device (string split " " $device)

    command bluetoothctl connect $device[2]
end
