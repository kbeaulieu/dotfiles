# cheat command
export CHEATCOLORS=true

alias l 'ls -la'
alias cd.. 'cd ..'
alias cd... 'cd ../..'
alias cd.... 'cd ../../..'
alias cd..... 'cd ../../../..'

alias frc 'vim ~/.config/fish/config.fish; and source ~/.config/fish/config.fish'
alias efrc 'subl ~/.config/fish'
alias sfrc 'source ~/.config/fish/config.fish'

alias chrome '/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome'

alias mux 'tmuxinator'

alias cdr 'ranger --choosedir $HOME/.rangerdir; LASTDIR `cat $HOME/.rangerdir`; cd "$LASTDIR"'

alias ppp 'echo $PATH | tr ":" "\n"'

alias dk 'docker'

alias wtr 'curl wttr.in/quebec\?lang=fr'

alias tw 'timew'
alias tws 'timew summary :ids'

alias jp 'jump'

function kat
	if count $argv > 2
		bat $argv[1] --line-range $argv[2]
	else 
		bat $argv[1]
	end
end

function portPid
	lsof -n -i:$argv[1] | sed -n 2p | awk '{ print $2 }'
end

function topPort
	htop -p (portPid $argv[1])
end

#function macdown
#	(mdfind kMDItemCFBundleIdentifier=com.uranusjr.macdown | head -n1)/Contents/SharedSupport/bin/macdown $argv
#end

#fucntion ql
#	qlmanage -p $argv >& /dev/null
#end

