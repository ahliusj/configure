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
alias lh="ls -lh"

alias z="fg"

alias e="emacs"
alias s='emacs -nw -Q'
alias ed='emacs -Q --script'

alias sd='sync;sync;sudo shutdown -h now'
alias pandocref='pandoc --reference-doc ~/ref.docx'

# alias gpl='git pull'
# alias gps='git push'
# alias gcm='git commit -m "update"'
# alias gst='git status'
# alias gad='git add'
# alias grm='git rm'

# Define my own shell pattern
# PS1='[\u@\h [\033[01;37m\]:\[\033[01;34m\]\w \A #\#]\$ '
PS1='[\[\033[01;91m\]\u\[\033[01;37m\] \[\033[01;34m\]\w\[\033[00m\] \A #\#]\$ '
# PS1='${debian_chroot:+($debian_chroot)}\[\033[01;91m\]\u\[\033[01;37m\] at \[\033[01;33m\]\h\[\033[01;37m\]:\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1 " \[\033[01;32m\][%s]")\[\033[00m\]\$ '
# PS2="> "
# useful function
extract () {
    if [ -f $1 ] ; then
	case $1 in
	    *.tar.bz2)   tar xvjf $1    ;;
	    *.tar.gz)    tar xvzf $1    ;;
	    *.bz2)       bunzip2 $1     ;;
	    *.rar)       rar x $1       ;;
	    *.gz)        gunzip $1      ;;
	    *.tar)       tar xvf $1     ;;
	    *.tbz2)      tar xvjf $1    ;;
	    *.tgz)       tar xvzf $1    ;;
	    *.zip)       unzip $1       ;;
	    *.Z)         uncompress $1  ;;
	    *.7z)        7z x $1        ;;
	    *)           echo "don't know how to extract '$1'..." ;;
	esac
    else
	echo "'$1' is not a valid file!"
    fi
    }
