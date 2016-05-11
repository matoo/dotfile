# ~/.zshrc: execute by zsh(1) for non-login shells

# If not running interactively, don't anything
if [ -z "$PS1" ]; then
  return 0
fi

PS1='%m:%c %n%% '

# History setting
setopt extended_history # Save each command's elapsed time to the history file.
                        # And 'history -D' show the command's elapsed time
setopt hist_ignore_dups # Do not write command log into history file if they are
                        # duplicates of the previous command.
SAVEHIST=10000          # Set the maximum number of lines that are written into
                        # the history file.
HISTSIZE=100            # Set the maximum number of lines which are kept in memory.

# Tab-completion
autoload -Uz compinit
compinit -u
