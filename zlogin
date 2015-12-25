# ~/.zlogin: executed by zsh(1) for login shells.

# If not running interactively, don't anything
if [ -z "$PS1" ]; then
  return 0
else
  # Remote Login mode (e.g. via ssh vnc)
  if [ -n "$SSH_TTY" ]; then
    PS1="[%n@%m: %c]%% "
  else
    PS1='%m:%c %n%% '
  fi
fi
