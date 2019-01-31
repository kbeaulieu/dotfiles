# Coreutils
set PATH /usr/local/opt/coreutils/libexec/gnubin $PATH
set MANPATH /usr/local/opt/coreutils/libexec/gnuman $MANPATH
alias ls "gls --color=always"

# Other GNU commands
set PATH /usr/local/opt/gnu-sed/libexec/gnubin \
    /usr/local/opt/grep/libexec/gnubin \
    /usr/local/opt/gnu-tar/libexec/gnubin \
    /usr/local/opt/gawk/libexec/gnubin $PATH
set MANPATH /usr/local/opt/gnu-sed/libexec/gnuman \
    /usr/local/opt/grep/libexec/gnuman \
    /usr/local/opt/gnu-tar/libexec/gnuman \
    /usr/local/opt/gawk/libexec/gnuman $MANPATH
