# Display current git branch
function __prompt_git -d "Display the actual git branch"
  set -l ref
  set -l std_prompt (prompt_pwd)
  set -l is_dot_git (string match '*/.git' $std_prompt)

  if git_is_repo; and test -z $is_dot_git
    printf 'on '
    set_color red

    set -l git_branch (command git symbolic-ref --quiet --short HEAD 2> /dev/null; or git rev-parse --short HEAD 2> /dev/null; or echo -n '(unknown)')

    printf '%s ' $git_branch

    set_color normal
  end
end

# Print current user
function __prompt_get_user -d "Print the user"
  if test $USER = 'root'
    set_color red
  else
    set_color blue
  end
  printf '%s' (whoami)
end

# Get Machines Hostname
function __prompt_get_host -d "Get Hostname"
  if test $SSH_TTY
    tput bold
    set_color red
  else
    set_color cyan
  end
  printf '%s' (hostname|cut -d . -f 1)
end

# Get Project Working Directory
function __prompt_pwd -d "Get PWD"
  set_color $fish_color_cwd
  printf '%s ' (prompt_pwd)
end

function fish_prompt
  set -l code $status

  # Logged in user
  __prompt_get_user
  set_color normal
  printf ' at '

  # Machine logged in to
  __prompt_get_host
  set_color normal
  printf ' in '

  # Path
  __prompt_pwd
  set_color normal

  # Git info
  __prompt_git

  if test $code -eq 127
    set_color red
  end

  # ›λ❯ 
  printf '\n❯ '
  set_color normal
end
