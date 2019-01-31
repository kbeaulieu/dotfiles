function setLayoutForMon
    chunkc tiling::monitor -f $argv[2]
    chunkc tiling::desktop --deserialize ~/.chunkwm_layouts/($argv[1])_monitor($argv[2])
end function

osascript home-layout.scpt
setLayoutForMon 1 kronos
setLayoutForMon 2 kronos
setLayoutForMon 3 kronos
