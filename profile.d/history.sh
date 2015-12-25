# History Settings

if [ "$SHELL" = "/bin/zsh" ]; then
  setopt extended_history # Save each command's elapsed time to the history file.
                          # And 'history -D' show the command's elapsed time
  setopt share_history    # Append command logs from all terminals into history file.
  setopt hist_ignore_dups # Do not write command log into history file if they are
                          # duplicates of the previous command.
  HISTFILE=~/.zsh_history # The path of the file that kept history logs of command
                          # executing in zsh session.
  HISTSIZE=1000           # Set the maximum number of lines which are kept in memory.
  SAVEHIST=10000          # Set the maximum number of lines that are written into
                          # the history file.
fi
