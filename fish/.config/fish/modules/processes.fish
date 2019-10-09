###
# Port utils
###
function get_port_pid -a port
    lsof -n -i:$port | sed -n 2p | awk '{ print $2 }'
end

function htop_port -a port
    htop -p (get_port_pid $port)
end

function kill_by_port
    kill $argv[2..10] (get_port_pid $argv[1])
end


###
# Stop, restart and start processes
###
function kill_and_wait -a process
    killall $process
    spin "while pgrep $process > /dev/null; end;"
end

function restart_process -a process
    kill_and_wait $process
    eval $process
end

