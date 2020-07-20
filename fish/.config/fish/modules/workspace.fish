function workspace -a name
	switch $name
	case "equisoft"
    		echo Starting Equisoft workspace
    		idea
    		open -a "Firefox Developer Edition"
    		open -a Slack
    		open -a Typora
    		open -a TogglDesktop
	end
end

complete -f -c workspace -a 'equisoft'
