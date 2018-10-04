# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
alias l="ll"
alias d="ls -ld */"

alias z="fg"

alias e="emacs"
alias s='emacs -nw -Q'
alias ed='emacs -Q --script'

alias sd='sudo shutdown -h now'
alias pandocref='pandoc --reference-doc ~/ref.docx'

# alias gpl='git pull'
# alias gps='git push'
# alias gcm='git commit -m "update"'
# alias gst='git status'
# alias gad='git add'
# alias grm='git rm'
