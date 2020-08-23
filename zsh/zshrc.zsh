#
# User configuration sourced by interactive shells
#

# Begin intialize zimfw
# Remove older command from the history if a duplicate is to be added.
setopt HIST_IGNORE_ALL_DUPS
## Remove path separator from WORDCHARS.
WORDCHARS=${WORDCHARS//[\/]}
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
if [[ ${ZIM_HOME}/init.zsh -ot ${ZDOTDIR:-${HOME}}/.zimrc ]]; then
  # Update static initialization script if it's outdated, before sourcing it
  source ${ZIM_HOME}/zimfw.zsh init -q
fi
source ${ZIM_HOME}/init.zsh
# End intialize zimfw

# causes sourcing this file to automatically close the running shell
[ -z "$PS1" ] && return

# Prevent overwriting screen-256color which is set by Tmux
case "$TERM" in
  screen*) ;; # blank statement
  *) export TERM=xterm-256color ;;
esac

# only define LC_CTYPE if undefined
if [[ -z "$LC_CTYPE" && -z "$LC_ALL" ]]; then
	export LC_CTYPE=${LANG%%:*} # pick the first entry from LANG
fi

# Disables shared history between tabs and windows
unsetopt inc_append_history
unsetopt share_history

# skip_global_compinit=1 # faster zsh startup time
DEFAULT_USER="irliao" # replaces user@hostname with specified username
[ -z "$LANG" ] && eval "$(locale)" # set language if not found
PATH=/usr/local/bin:/usr/local/sbin:~/.bin:/usr/bin:/bin:/usr/sbin:/sbin
# WORDCHARS='*?_-.[]~=&;!#$%^(){}<>' # list of word delimeters

# Function search path
# typeset -gU fpath # ensure no duplicates globally
fpath=(
  /usr/local/bin # HomeBrew installed commands
  "$HOME"/.dotfiles/zsh/modules/functions # enabled modules # TODO: reenable after migrating ~/.zfunction to .zsh files in functions/
  "${fpath[@]}"
)

# LS color overrides
# export LSCOLORS=GxFxCxDxBxegedabagaced # Dark Terminal theme
# export CLICOLOR=1
# ls -G . &>/dev/null && alias ls='ls -G' # this is a good alias, it works by default just using $LSCOLORS
# # only use coreutils ls if there is a dircolors customization present ($LS_COLORS or .dircolors file), otherwise, gls will use the default color scheme which is ugly af
# [[ -n "$LS_COLORS" || -f "$HOME/.dircolors" ]] &&
#   gls --color -d . &>/dev/null && alias ls='gls --color=tty'

autoload -Uz clear-scrollback && clear-scrollback
autoload -Uz promptinit && promptinit
prompt cmder # load custom prompt theme
# autoload -Uz compinit && compinit

# TODO: check if this is needed
# Smart Urls
# autoload -Uz url-quote-magic
# zle -N self-insert url-quote-magic

export DEVPATH="$HOME/Developments"
export EDITOR='vim'
export LESS='-F -g -i -M -R -S -w -X -z-4' # mouse-wheel scrolling has been disabled by -X (disable screen clearing), remove -X and -F (exit if the content fits on one screen) to enable it.
export PAGER='less'
# export VISUAL='vim'
# export EDITOR="$VISUAL"

# Haskell
# TODO: fix shell complaining about compinit in insecure path
# Auto-completion for Haskell-Stack
# if (( $+commands[stack] )) then
#   autoload -U +X compinit && compinit # may already be loaded by zsh frameworks and such
#   autoload -U +X bashcompinit && bashcompinit
#   eval "$(stack --bash-completion-script stack)"
# fi
PATH="$PATH:$HOME/.local/bin" # where stack installs hlint

# Go
# export GOPATH="$DEVPATH/go"
# PATH="$PATH:$GOPATH/bin"

# theFuck
if (( $+commands[thefuck] )); then
  eval $(thefuck --alias) # adds 'fuck' as alias
  eval $(thefuck --alias fk) # adds 'fk' as alias
fi

# Node
if (( $+commands[node] )) && [[ -d "/usr/local/lib/node_modules" ]]; then
  export NODE_MODULES_GLOBAL_PATH="/usr/local/lib/node_modules"
  PATH="$PATH:node_modules/.bin" # access ./node_modules/.bin/ in project root directory
fi

# Python
# for python installed with brew, modules and executables installed in pip will be installed under some brew directory
# variables below will let system python know which compiler flag to set in order to build bindings for python softwares installed under some brew directory
# CFLAGS=-I$(brew --prefix)/include
# LDFLAGS=-L$(brew --prefix)/lib

# Yarn
# if (( $+commands[yarn] )) && [[ -d ~/.yarn/bin ]]; then
#   PATH=~/.yarn/bin:"$PATH"
# fi

# xCode
# if type xcode-select > /dev/null 2>&1; then
#   export XCODE="$(xcode-select --print-path)"
#   PATH="$PATH:$XCODE/Tools"
# fi

# Ensure all sessions will have the PATH with access to external cli's bin
export PATH

# List files upon change directory
chpwd() {
  emulate -L zsh
  ls
}

# Redraw prompt when Terminal size changes, fixes Tmux window size and vi-mode prompt update
TRAPWINCH() {
  zle && { zle reset-prompt; zle -R }
}

# Base16-Shell - dynamically generates .config_files for shell and vim theme based on current iTerm color theme
# BASE16_SHELL=$HOME/.config/base16-shell/
# [ -n "$PS1" ] && [ -s $BASE16_SHELL/profile_helper.sh ] && eval "$($BASE16_SHELL/profile_helper.sh)"

# Base16 Shell - for static theme (theme sh file pregenerated by going through base16-shell profile_helper)
# BASE16_SCHEME="default"
# BASE16_SHELL="$HOME/.dotfiles/config/term/iterm2/base16-$BASE16_SCHEME-dark.sh"
# [[ -s "$BASE16_SHELL" ]] && source "$BASE16_SHELL"

# Custom aliases and functions (should generally source alias before function, details: http://zsh.sourceforge.net/Intro/intro_4.html)
[[ -f "${HOME}/.zalias" ]] && source "${HOME}/.zalias" # should source before functions
[[ -f "${HOME}/.zfunction" ]] && source "${HOME}/.zfunction" # should source after aliases

# TODO: enable after merging zle in this file to zsh/modules/editor/terminfo.zsh
# Custom bindkeys for less common or unavailable in  OSX (ex. PageDown, PageUp)
# [[ -f ~/.dotfiles/zsh/modules/editor/function-key.zsh ]] && source ~/.dotfiles/zsh/modules/editor/function-key.zsh

# TODO: figure out how to autoload (like mingit prompt in fpath) instead of sourcing Z
# Z module for jumping to MRU directories
# [ -f ~/.dotfiles/zsh/modules/z/z.sh ] && source ~/.dotfiles/zsh/modules/z/z.sh

# Zsh-autosuggestions module settings and bindings
# [ ! -d ~/.zsh-autosuggestions ] && git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh-autosuggestions
# source ~/.zsh-autosuggestions/zsh-autosuggestions.zsh
# ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=8" # suggestion style, default is fg=8
# ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20 # disable suggestion for large buffers
# bindkey '\e^I' autosuggest-accept # Option+Tab to accept current suggestion NOTE: requires zsh-autosuggestions module
# bindkey '^ ' autosuggest-execute # Option+Return TODO: Option+Return map does not work
# bindkey '\e^?' autosuggest-clear # Option+Delete TODO: Option+Delte map does not work

# GitHub profile for ~/.bin/git-open
# export GITHUB_USER='irliao'
# export GITHUB_URL='https://git.my-company.com' # mainly for GitHub Enterprise, should override in custom ~/.bash_profile

# Bash profile
[[ -f "${HOME}/.bash_profile" ]] && source "${HOME}/.bash_profile"

# TODO: remove sourcing logger.sh after bash is merged with zsh, bash should source it instead
# Add logger utils
[[ -f "${HOME}/.dotfiles/config/bash/modules/logger.sh" ]] && source "${HOME}/.dotfiles/config/bash/modules/logger.sh"

# Local profle
[[ -f "${HOME}/.local_profile" ]] && source "${HOME}/.local_profile"

# Prints escape sequence for cursors
function print_dcs {
  print -n -- "\EP$1;\E$2\E\\"
}

# Prints cursor shapes based on Tmux status, only for iTerm2
function set_cursor_shape {
  if [ -n "$TMUX" ]; then
    # tmux will only forward escape sequences to the terminal if surrounded by
    # a DCS sequence
    print_dcs tmux "\E]50;CursorShape=$1\C-G"
    # print_dcs tmux "\E]1337;CursorShape=$1\C-G"
  else
    print -n -- "\E]50;CursorShape=$1\C-G"
    # print -n -- "\E]1337;CursorShape=$1\C-G"
  fi
}

# TODO: merge logic into zle-keymap-select zle-line-init
# Make aborted command-lines available after pressing undo
# zle-line-init() {
#   if [[ -n $ZLE_LINE_ABORTED ]]; then
#     local savebuf="$BUFFER" savecur="$CURSOR"
#     BUFFER="$ZLE_LINE_ABORTED"
#     CURSOR="$#BUFFER"
#     zle split-undo
#     BUFFER="$savebuf" CURSOR="$savecur"
#   fi
# }

# Updates prompt with editor mode when keymap changes OR when prompt inits
function zle-keymap-select zle-line-init {
  #  TODO: prevent this from causeing mouse clicks to paste clipboard content when prompt is frozen due to some process running
  # if [[ -n $ZLE_LINE_ABORTED ]]; then
  #   local savebuf="$BUFFER" savecur="$CURSOR"
  #   BUFFER="$ZLE_LINE_ABORTED"
  #   CURSOR="$#BUFFER"
  #   zle split-undo
  #   BUFFER="$savebuf" CURSOR="$savecur"
  # fi

  case $KEYMAP in
    vicmd) set_cursor_shape 0 ;; # block cursor
    viins) set_cursor_shape 1 ;; # line cursor
    main) set_cursor_shape 2 ;; # underline
  esac

  # Display Vim mode in prompt
  # VIM_PROMPT="%F{3}vi%f"
  # RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"

  zle reset-prompt
  zle -R
}
zle -N zle-line-init
zle -N zle-keymap-select

function zle-line-finish {

    set_cursor_shape 0 # block cursor
}
zle -N zle-line-finish

# TODO: verify if this works by trying i", a(, etc
# Select-bracketed which selects text delimited by brackets and select-quoted which selects text delimited by quote characters
# autoload -U select-bracketed select-quoted
# zle -N select-bracketed
# zle -N select-quoted
#   for km in viopp visual; do
#   bindkey -M $km -- '-' vi-up-line-or-history
#   for c in {a,i}"${(s..):-\'\"\`\|,./:;-=+@}"; do
#     bindkey -M $km $c select-quoted
#   done
#   for c in {a,i}${(s..):-'()[]{}<>bB'}; do
#     bindkey -M $km $c select-bracketed
#   done
# done

# TODO: fix broken
# Pressing Enter/Return on empty promptline will run ls
# auto-ls-empty-prompt () {
#   if [[ $#BUFFER -eq 0 ]]; then
#     echo ""
#     ls
#     zle redisplay
#   else
#     zle .$WIDGET
#   fi
# }
# zle -N accept-line auto-ls-empty-prompt
# zle -N other-widget auto-ls-empty-prompt

# Press Tab on empty prompt to run ls
function expand-or-complete-or-list-files-empty-prompt() {
    if [[ $#BUFFER == 0 ]]; then
        BUFFER="ls "
        CURSOR=3
        zle list-choices
        zle backward-kill-word
    else
        zle expand-or-complete
    fi
}
zle -N expand-or-complete-or-list-files-empty-prompt

# Reset to default key bindings.
bindkey -d

# stty -ixon # unbind Ctrl+S (freeze term input)
# stty -ixoff # unbinds Ctrl+Q (resume term input)
unsetopt flowcontrol # disables ^S (freeze) and ^Q (resume) terminal output
setopt MENU_COMPLETE # completion with > 1 choices will auto insert first choice

# TODO: move all bindkey logics to zbindkey.zsh
# Vi all mode bindings
export KEYTIMEOUT=1 # 0.4 to 0.1 sec delay in Vim mode display change, raise value if other commands getting issues
bindkey -v # emulates Vi; use "set -o vi" for Bash NOTE: will unset any bindkey before this
# bindkey -rpM viins '\e' # remove all bindings starting with a given prefix, used mainly to remove the annoying delay after you type `\e' to enter vi command mode, but disables Command+V from pasting (goes into vi-mode instead)
# bindkey "^@" set-mark-command # TODO: enable after figuring out how to use this
bindkey "^A" beginning-of-line
bindkey "^B" backward-delete-word
bindkey "^C" kill-line
bindkey "^E" end-of-line
bindkey "^F" forward-word
bindkey '^G' what-cursor-position
bindkey "^H" delete-char # delete left char
# bindkey '^J' accept-line # Zsh default special key, should NOT Be modified
# bindkey "^K" beginning-of-buffer-or-history
# bindkey "^L" backward-kill-line
# bindkey "^L" _clear-scrollback
bindkey "^M" accept-line # Zsh default special key, should NOT be modified

bindkey "^P" history-substring-search-up
bindkey "^N" history-substring-search-down
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# bindkey "^N" down-line-or-history
# bindkey "^P" up-line-or-history
# bindkey "^N" down-line-or-search
# bindkey "^P" up-line-or-search
# bindkey '^R' history-incremental-search-backward # starts searching history backward
bindkey "^R" fzf-history-widget # R for replay history
# bindkey "^W" history-incremental-search-forward

#
# bindkey "^W" delete-word
bindkey "^Y" push-line-or-edit # stash current prompt, restore current prompt after immediate command returns
bindkey '^I' expand-or-complete-or-list-files-empty-prompt # ^I == Tab, press Tab to ls when pressed on empty prompt
bindkey '^[[Z' reverse-menu-complete # ^[[Z == Shift+Tab, used mainly to fix Shift+Tab not working in iTerm
bindkey '^?' backward-delete-char # ^? == Delete, press Delete to delete right char
# bindkey '<ctrl-v><delete>' delete-char # Ctrl+V, Delete to delete char

bindkey -a 'gg' beginning-of-buffer-or-history
bindkey -a 'g~' vi-oper-swap-case
bindkey -a G end-of-buffer-or-history

bindkey "^[[1~" vi-beginning-of-line   # Home
bindkey "^[[4~" vi-end-of-line         # End
bindkey '^[[2~' beep                   # Insert
bindkey '^[[3~' delete-char            # Del
bindkey '^[[5~' vi-backward-blank-word # Page Up
bindkey '^[[6~' vi-forward-blank-word  # Page Down

# Option+key bindings
bindkey '\e.' insert-last-word # Option+. to insert last command
bindkey '\e[J' self-insert # Option+J to navigate to next line when in multiline
bindkey '\e[A' history-substring-search-up # Option+Up
bindkey '\e[B' history-substring-search-down # Option+Down

# Vi modes bindings
# autoload -Uz edit-command-line # TODO: get edit-command-line function from prezto
# bindkey -M vicmd 'v' edit-command-line # press V to edit the command line (standard behaviour)
bindkey -M viins 'kj' vi-cmd-mode # press K+J in Insert mode to exit to Normal mode
bindkey -M vicmd "ga" what-cursor-position
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
bindkey -M vicmd 'u' undo
bindkey -M vicmd 'U' redo
bindkey -M vicmd 'yy' vi-yank-whole-line
bindkey -M vicmd "/" history-incremental-search-backward
bindkey -M vicmd "?" history-incremental-search-forward
bindkey ' ' magic-space # press Space to do history expansion when running history-incremental-search
# bindkey -M viins '\e[Z' reverse-menu-complete # Shift+Tab for Vi Insert mode only
# bindkey -M vicmd "$key[Control]R" redo # handles some weird cases TODO: enable after merging ~/.zbindkey

# iTerm customizations
if [[ ($TERM_PROGRAM == "iTerm.app") ]]; then
  # enable shell-integration for these commands: imgls, imgcat, download, divider
  test -e ${HOME}/.iterm2_shell_integration.zsh && source ~/.iterm2_shell_integration.`basename $SHELL`

  # # Provides user-defined variables for Badges (requires sourcing .iterm2_shell_integration.zsh)
  # iterm2_print_user_vars() {
  #   # TODO: figure out why syntax highlighting after this line is messed up in this file
  #   # NOTE: ggrep is aliased to UNIX grep, different syntax required if using ag
  #   iterm2_set_user_var gitBranch $((git branch 2> /dev/null) | /usr/bin/grep \* | cut -c3-)
  # }
  # # Set badge to show the current session name and git branch, if any is set
  # printf "\e]1337;SetBadgeFormat=%s\a" \
  #   $(echo -n "\(session.name) \(user.gitBranch)" | base64)
elif [[ ($TERM_PROGRAM == "Apple_Terminal") ]]; then # Apple Terminal
  # automatically start Tmux
  [[ -f ~/.dotfiles/zsh/ztmux.zsh ]] && source ~/.dotfiles/zsh/ztmux.zsh
else
  # unsupported terminal emulators
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# TODO: verify if this or syntax-highlighting needs to be loaded last
# Rbenv (NOTE: should be the very last lines in ~/.zshrc or ~/.bash_profile)
if (( $+commands[rbenv] )); then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
  # export RBENV_VERSION=2.4.3 # shell specific Ruby version
fi
