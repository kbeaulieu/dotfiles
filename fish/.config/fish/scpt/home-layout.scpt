# Monitor 1
tell application "iTerm"
    activate
    set bounds of front window to {1156, 42, 1900, 1060}
end tell
tell application "Firefox"
    activate
    set bounds of front window to {20, 42, 1140, 1060}
end tell

# Monitor 2 
tell application "System Events" to tell application process "IntelliJ IDEA"
    activate
    set position of window 1 to {1940, -51}
end tell

# Monitor 3
tell application "Slack"
    activate
    set bounds of the front window to {3860, 183, 4886, 745}
end tell
tell application "System Events" to tell application process "Spark" 
    activate
    set position of window 1 to {3860, 759}
    set size of window 1 to {1026, 562}
end tell
tell application "System Events" to tell application process "Spotify" 
    activate
    set position of window 1 to {4901, 183}
    set size of window 1 to {839, 1138}
end tell
