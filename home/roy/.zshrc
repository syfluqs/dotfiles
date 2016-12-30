# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/roy/.zshrc'
bindkey "^?" backward-delete-char

autoload -Uz compinit
compinit
# End of lines added by compinstall

if [[ -r /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi


alias ls='ls --color=auto'
alias pacaur-s='pacaur --noconfirm --noedit'
alias subl='subl >/dev/null 2>/dev/null'
export PATH=/home/roy/.gem/ruby/2.3.0/bin:$PATH

export TERM=xterm-256color
trap exit EXIT
