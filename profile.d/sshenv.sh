if [ "$SHELL" = '/bin/zsh' ]; then
  STR='[%n@%m: %c]%% '
else
  STR='[\u@\h \W]\\$ '
fi

if [ -n "$SSH_TTY" ]; then
  export PS1="$STR"
fi
