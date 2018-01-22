# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm|xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    if [[ ${EUID} == 0 ]] ; then
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '
    else
        PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\] \[\033[01;34m\]\w \$\[\033[00m\] '
    fi
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h \w \$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h \w\a\]$PS1"
    ;;
*)
    ;;
esac

# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -x /usr/bin/mint-fortune ]; then
     /usr/bin/mint-fortune
fi

# Command

## EXIT

alias ex='exit'
alias q='exit'

## Working with files 

alias mv='mv -v'
alias mk='mkdir -p'
alias to='touch'
alias cp='cp -r'
alias rmf='rm -rfv'
alias rm='rm -rv'

## Clear Console

alias re='clear'
alias ку='clear'
alias rel='clear && ls'
alias rle='clear && ls'
alias ren='clear && ls | nl'

## What size

alias df='df -h'
alias du='du -hs'

## Change Directory

alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cdd='cd ~/Desktop'

## Search file

alias lg='ls | grep -i'
alias fig='find | grep -i'
alias g='grep -i'

## Show file

alias ll='ls -lh -1 --color=tty --sort=extension'
alias ls='ls -hF -1 --color=tty --sort=extension'

# Mount Windows and Disk D and Flash

alias morel='sudo mount /dev/sda4 /media/reloze/reloze'
alias mowin='sudo mount /dev/sda2 /media/reloze/windows'
alias moflash='sudo mount /dev/sdb /media/reloze/flash'

# Umount Flash

alias umowin='sudo umount /dev/sda2'
alias umorel='sudo umount /dev/sda4'
alias umoflash='sudo umount /dev/sdb'

# Launch Program

alias nemo='thunar'
alias task='gnome-system-monitor'
alias tlauncher='nemo /media/reloze/reloze/Files/sft/linux/tlauncher-2.22.jar'
alias rmcra='/home/reloze/files/wrk/4wrk(Cravival)/cravival/rmcra.sh'
alias shutdownpy='python3.5 /home/reloze/dev/python/utils/shutdown.py'

# Directory

## MUSIC DIR

alias xmsc='cd /media/reloze/reloze/Files/msc/Super-Hit ; vlc *.mp3 & cd - ; '
alias xxmsc='cd ~/Music; vlc *.mp3 & cd - ;'
alias mscdir='cd /media/reloze/reloze/Files/msc/Super-Hit;'

## Change Directory

alias cdgta='cd /home/reloze/files/game/GTA\ San\ Andreas/'
alias cdrel='cd /media/reloze/reloze/'

## Directory

a=~/files/game/GTASA/
msc=~/Music
dev=~/dev/python
wrk=/home/reloze/files/wrk

# BIND

bind '"\e[20~":"git clone https://github.com/danek123pro/"'
bind '"\C-l":"clear; ls\n"'
bind '"\el":forward-char'
bind '"\eh":backward-char'
bind '"\e\C-h":backward-word'
bind '"\e\C-j":forward-word'



