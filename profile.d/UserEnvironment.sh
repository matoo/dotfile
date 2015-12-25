# Personal Preference Environment
P_PATH="${PREFIX}/bin:${PREFIX}/sbin"
P_MANPATH="${PREFIX}/share/man"
PATH="${PATH}:${P_PATH}"
MANPATH="${MANPATH}:${P_MANPATH}"
unset P_PATH P_MANPATH

# Tab-completion
if [ $SHELL = "/bin/zsh" ]; then
  autoload -Uz compinit
  compinit
fi

# Export Global Environment Variables
## Personal Preference Environment
export PREFIX="$HOME/.local"
export LANG='ja_JP.UTF-8'
P_PATH="${PREFIX}/bin:${PREFIX}/sbin"
P_MANPATH="${PREFIX}/share/man"
export PATH="${PATH}:${P_PATH}"
export MANPATH="${MANPATH}:${P_MANPATH}"
unset P_PATH P_MANPATH
if [ $SHELL = "/bin/zsh" ]; then
  export PS1='%m:%c %n%% '
fi

## Local Develop Environment
export CFLAGS="-I${PREFIX}/include -L${PREFIX}/lib"
export CXXFLAGS="-I${PREFIX}/include -L${PREFIX}/lib"
export LDFLAGS="-L${PREFIX}/lib"
export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:$PREFIX/lib/pkgconfig"

## Python environment
export PYTHONPATH="$HOME/Library/Frameworks/Python.framework/Versions/2.7/site-packages/"
