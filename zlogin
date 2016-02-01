# ~/.zlogin: executed by zsh(1) for login shells.

# If not running interactively, don't anything
if [ -z "$PS1" ]; then
  return 0
fi

PS1='%m:%c %n%% '

# If not found local profile directory, don't anything
PROFILE_D="$HOME/.local/etc/profile.d"
if [ -d $PROFILE_D ]; then
  for s in $(ls $PROFILE_D/*); do
    [ -f $s -a -r $s ] && . $s
  done
fi
unset PROFILE_D
