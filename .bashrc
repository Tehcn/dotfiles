export FORCE_COLOR=true

unalias -a $(alias | grep winpty | grep php | cut -d"=" -f1 | cut -d" " -f2)
export ANSICON=true

alias ls="ls --color=auto"
alias v="v.bat"
alias la="ls -a --color=auto"
