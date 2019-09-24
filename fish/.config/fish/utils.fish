# Misc
abbr cd.. 'cd ../'
abbr cd... 'cd ../../'
abbr cd.... 'cd ../../../'
abbr cd..... 'cd ../../../../'
abbr l 'ls -la'
alias cdr 'ranger --choosedir $HOME/.rangerdir; LASTDIR `cat $HOME/.rangerdir`; cd "$LASTDIR"'
alias tvim 'set TERM screen-256color; /usr/local/bin/vim'
alias mdv 'mdv -t 665.9171 -T 665.9171'

# Fish
alias frc 'vim ~/.config/fish/config.fish; and source ~/.config/fish/config.fish'
alias efrc 'subl ~/.config/fish'
alias sfrc 'source ~/.config/fish/config.fish'

# Abbreviations
abbr mux tmuxinator
abbr dk docker
abbr dc docker-compose
abbr dpg "docker run --label pg -it"
abbr dppg "docker container prune --filter=\"label=pg\""
abbr kc kubectl
abbr gw "./gradlew"
abbr ugw "./gradlew wrapper --gradle-version"
abbr jp jump
abbr tf terraform

function portPid
    lsof -n -i:$argv[1] | sed -n 2p | awk '{ print $2 }'
end

function topPort
    htop -p (portPid $argv[1])
end

function killPort
    kill $argv[2..10] (portPid $argv[1])
end

### fixme ###

#function macdown
#	(mdfind kMDItemCFBundleIdentifier=com.uranusjr.macdown | head -n1)/Contents/SharedSupport/bin/macdown $argv
#end

#fucntion ql
#	qlmanage -p $argv >& /dev/null
#end
