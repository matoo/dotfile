# Homebrew Settings
CACHEDIR=$HOME/Library/Caches/Homebrew
if [ ! -d $CACHEDIR ]; then
  mkdir -p $CACHEDIR
fi
export HOMEBREW_CASK_OPTS='--appdir=/Applications'
