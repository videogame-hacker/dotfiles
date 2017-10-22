_prompt_color() {
    if [[ -n $SSH_CONNECTION ]]; then
        echo "039"
    else
        echo "042"
    fi
}

function _prompt_parse_git_dirty() {
  local STATUS=''
  local FLAGS
  FLAGS=('--porcelain')
  if [[ "$(command git config --get oh-my-zsh.hide-dirty)" != "1" ]]; then
    if [[ $POST_1_7_2_GIT -gt 0 ]]; then
      FLAGS+='--ignore-submodules=dirty'
    fi
    if [[ "$DISABLE_UNTRACKED_FILES_DIRTY" == "true" ]]; then
      FLAGS+='--untracked-files=no'
    fi
    STATUS=$(command git status ${FLAGS} 2> /dev/null | tail -n1)
  fi
  if [[ -n $STATUS ]]; then
    echo " *"
  else
    echo ""
  fi
}

_prompt_pipenv() {
  if [[ -n $PIPENV_ACTIVE ]]; then
    echo " [pipenv]"
  else
    echo ""
  fi
}

prompt_precmd() {
    vcs_info

    if [[ -z ${vcs_info_msg_0_} ]]; then
        PROMPT="%F{$(_prompt_color)}%3/%f$(_prompt_pipenv) $ "
    else
        PROMPT="%F{$(_prompt_color)}%3/%f ("
        PROMPT+='${vcs_info_msg_0_}'
        PROMPT+="$(_prompt_parse_git_dirty))$(_prompt_pipenv) $ "
    fi

    RPROMPT="%F{249}%n@%M%f"
}

prompt_init() {
    export PROMPT_EOL_MARK=''
    autoload -Uz add-zsh-hook
    autoload -Uz vcs_info

    add-zsh-hook precmd prompt_precmd

    zstyle ':vcs_info:*' enable git
    zstyle ':vcs_info:*' use-simple true
    zstyle ':vcs_info:git*' formats '%b'
    zstyle ':vcs_info:git*' actionformats '%b|%a'

    zstyle ':vcs_info:*' max-exports 2

}

prompt_init
