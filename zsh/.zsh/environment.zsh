# npm packages in PATH
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

# Editor and pager
export EDITOR="vim"
export VISUAL="less"

bindkey -e # Even though vim is $EDITOR, we want emacs-esque line editing.
