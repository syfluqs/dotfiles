# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -v
export KEYTIMEOUT=1
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
alias auto-reflector='sudo reflector --verbose -l 200 -p http --sort rate --save /etc/pacman.d/mirrorlist'
alias to_clip='xclip -selection clipboard'
alias scrot="scrot -e 'mv \$f ~/Pictures/Screenshots/\$f'"
export PATH=/home/roy/.gem/ruby/2.3.0/bin:$PATH
export GSS_DIR=/home/roy/gdiso
export TERM=xterm-256color
trap exit EXIT

#coloring man pages
#
man() {
        env \
                LESS_TERMCAP_mb=$'\e[01;34m' \
                LESS_TERMCAP_md=$'\e[01;34m' \
                LESS_TERMCAP_me=$'\e[0m' \
                LESS_TERMCAP_se=$'\e[0m' \
                LESS_TERMCAP_so=$'\e[01;44;33m' \
                LESS_TERMCAP_ue=$'\e[0m' \
                LESS_TERMCAP_us=$'\e[01;32m' \
                man "$@"
    }

find_text() {
    find | grep -v '/\.' | grep --color=always $1
    grep --exclude-dir=".git" --color=always -rni . -e $1
}

color_less () {
    pygmentize -f terminal "$1" | less -R -N -J
}