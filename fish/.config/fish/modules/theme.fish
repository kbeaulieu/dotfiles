###
# TODO : cleanup and add firefox
# create firefox extension that read a env var : https://developer.mozilla.org/en-US/docs/Archive/Add-ons/Add-on_SDK/Low-Level_APIs/system_environment
# See https://github.com/Claymont/theme-scheduler for changing theme
###

function theme -a theme  
    set -l alacritty_home ~/.config/alacritty
    set -l alacritty_themes_folder $alacritty_home/themes
    
    #set -l intellij_home $HOME/Library/Preferences/IntelliJIdea2019.2
 
    #ln -sf $intellij_home/jba_config/colors.scheme.$theme.xml $intellij_home/jba_config/colors.scheme.xml
    #ln -sf $intellij_home/jba_config/laf-$theme.xml $intellij_home/jba_config/laf.xml
    #ln -sf $intellij_home/options/material_theme_$theme.xml $intellij_home/options/material_theme.xml
    
    if test $theme = "dark"
        alacritty-colorscheme -C $alacritty_themes_folder -a one_dark.yaml
        osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to true'
    else
        alacritty-colorscheme -C $alacritty_themes_folder -a papercolor_light.yaml
        osascript -e 'tell application "System Events" to tell appearance preferences to set dark mode to false'
    end

    if pgrep idea > /dev/null
        #restart_process "idea"
    end
end

complete -f -c theme -a 'dark light'

