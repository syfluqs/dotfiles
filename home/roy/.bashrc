#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#colours for ls
alias ls='ls --color=auto'
#mount vmwware shared folder in /mnt/hgfs
alias mount_shared='sudo /usr/bin/vmhgfs-fuse -o subtype=vmhgfs-fuse,allow_other /mnt/hgfs'

#PS1='[\u@\h \W]\$ '
#PS1='\[\e[1;32m\][\u@\h \W]\$\[\e[0m\] '

#Powerline prompt
if [ -f /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
    source /usr/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

#for the colours
export TERM=xterm-256color

#show screenfetch if not inside tmux
if [ "$TMUX" = "" ] ; then screenfetch ; fi

#cdls to cd and ls
cdls() { cd "$@" && ls -a; }
