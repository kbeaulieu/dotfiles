# Misc
abbr cd.. 'cd ../'
abbr cd... 'cd ../../'
abbr cd.... 'cd ../../../'
abbr cd..... 'cd ../../../../'
abbr l 'ls -la'
alias cdr 'ranger --choosedir $HOME/.rangerdir; LASTDIR `cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias ppp 'echo $PATH | tr ":" "\n"'
alias tvim 'set TERM screen-256color; /usr/local/bin/vim'

# Fish
alias frc 'vim ~/.config/fish/config.fish; and source ~/.config/fish/config.fish'
alias efrc 'subl ~/.config/fish'
alias sfrc 'source ~/.config/fish/config.fish'

# Abbreviations
abbr mux tmuxinator
abbr dk docker
abbr gw "./gradlew"
abbr jp jump

function portPid
    lsof -n -i:$argv[1] | sed -n 2p | awk '{ print $2 }'
end

function topPort
    htop -p (portPid $argv[1])
end

### fixme ###

#function macdown
#	(mdfind kMDItemCFBundleIdentifier=com.uranusjr.macdown | head -n1)/Contents/SharedSupport/bin/macdown $argv
#end

#fucntion ql
#	qlmanage -p $argv >& /dev/null
#end
