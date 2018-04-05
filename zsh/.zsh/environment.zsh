# npm packages in PATH
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

# Source environment for nvm if installed
if [ -f "/usr/share/nvm/init-nvm.sh" ]
then
    source /usr/share/nvm/init-nvm.sh
fi

# Editor and pager
export EDITOR="vim"
export VISUAL="less"

bindkey -e # Even though vim is $EDITOR, we want emacs-esque line editing.
