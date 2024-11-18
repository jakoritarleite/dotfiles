function bdisconn
    set device (bluetoothctl devices Connected)
    set device (string split " " $device)

    if test (count $device) -lt 1
        echo "No device connected"
        return 1
    end

    command bluetoothctl disconnect $device[2]
end
