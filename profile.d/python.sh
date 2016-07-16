# Python Settings
export PIP_PREFIX="$HOME/Library/Python"
if [ -r ~/.pythonrc.py ]; then
    export PYTHONSTARTUP=~/.pythonrc.py
fi
