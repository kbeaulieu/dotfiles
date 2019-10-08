###
# Create or open a session named as $KAK_SESSION
# Usefull with direnv https://direnv.net/
function kak --wraps kak
    set sessions (command kak -l)
    set session_option "-s"
    if contains $KAK_SESSION $sessions
        set session_option "-c"
    end

    echo "kak session=$KAK_SESSION; sessions=$sessions; option=$session_option"

    command kak $session_option $KAK_SESSION $argv
end
