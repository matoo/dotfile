# ~/.bashrc: execute by bash(1) for non-login shells

# If not running interactively, don't anything
if [ -z "$PS1" ]; then
  return 0
elif [ -n "$SSH_TTY" ]; then
  PS1='[\u@\h \W]\\$ '
else
  PS1='\h:\W \u\$ '
fi

# History setting
shopt -s histappend     # Turn on parallel history. and disable to overwrite history file.
history -a
HISTSIZE=1000  # Set the maximum number of lines which are kept in memory.
HISTTIMEFORMAT="%F %T " # Set the timestamp format in history file
