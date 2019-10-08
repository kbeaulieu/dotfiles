###
# Port utils

function get_port_pid -d ""
    lsof -n -i:$argv[1] | sed -n 2p | awk '{ print $2 }'
end

function htop_port
    htop -p (get_port_pid $argv[1])
end

function kill_port
    kill $argv[2..10] (get_port_pid $argv[1])
end
