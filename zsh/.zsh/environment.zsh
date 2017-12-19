# Ruby gems in PATH
if which ruby >/dev/null && which gem >/dev/null; then
    PATH="$(ruby -rubygems -e 'puts Gem.user_dir')/bin:$PATH"
fi

# npm packages in PATH
NPM_PACKAGES="${HOME}/.npm-packages"
PATH="$NPM_PACKAGES/bin:$PATH"

# Editor and pager
export EDITOR="vim"
export VISUAL="less"

bindkey -e # Even though vim is $EDITOR, we want emacs-esque line editing.
