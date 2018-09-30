# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias l="ll"
alias z="fg"

alias e="emacs"
alias s='emacs -nw -Q'

alias sd='sudo shutdown -h now'
alias pandocref='pandoc --reference-doc ~/ref.docx'

alias gpl='git pull'
alias gps='git push'
alias gc='git commit -m "update"'
alias gs='git status'
alias ga='git add'
alias gd='git del'
