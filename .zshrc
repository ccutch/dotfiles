export ZSH=/home/connor/.oh-my-zsh
ZSH_THEME="robbyrussell"
TERM=xterm-256color
plugins=(vi-mode git git-flow)

export VISUAL=vim
export EDITOR="$VISUAL"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH="$PATH:/usr/local/go/bin"
export PATH="$PATH:$HOME/android-studio/bin"
export PATH="$PATH:$HOME/go_appengine/"
export PATH="$PATH:$HOME/appengine/"

export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

alias python3=py3.5

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH=$PATH:$HOME/google_appengine


## For vim mode
# no delay entering normal mode
# https://coderwall.com/p/h63etq
# https://github.com/pda/dotzsh/blob/master/keyboard.zsh#L10
# 10ms for key sequences
KEYTIMEOUT=1

# show vim status
# http://zshwiki.org/home/examples/zlewidgets
function zle-line-init zle-keymap-select {
  RPS1="${${KEYMAP/vicmd/-- NORMAL --}/(main|viins)/-- INSERT --}"
  RPS2=$RPS1
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

autoload -U tetris
zle -N tetris
bindkey ^T tetris
# add missing vim hotkeys
# fixes backspace deletion issues
# http://zshwiki.org/home/zle/vi-mode
bindkey -a u undo
bindkey -a '^R' redo
bindkey '^?' backward-delete-char
bindkey '^H' backward-delete-char

# history search in vim mode
# http://zshwiki.org./home/zle/bindkeys#why_isn_t_control-r_working_anymore
bindkey -M viins '^s' history-incremental-search-backward
bindkey -M vicmd '^s' history-incremental-search-backward

# The next line updates PATH for the Google Cloud SDK.
source '/home/connor/google-cloud-sdk/path.zsh.inc'

# The next line enables shell command completion for gcloud.
source '/home/connor/google-cloud-sdk/completion.zsh.inc'


export PATH="$PATH:$HOME/Android/Sdk/tools"
export ANDROID_HOME="$HOME/Android/Sdk"

#alias nm='nodemon -x $(history !!)'
alias bn='babel-node'
alias nm='nodemon -x $(fc -ln -1)'
alias nmx='nodemon -x'



function gtag {
  git tag "$@"
  git push origin --tags
}
