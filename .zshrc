function setTmuxAutostartOnce() {
    # Autostart tmux - if installed, but allow non-tmux shells
    \tmux list-sessions > /dev/null 2> /dev/null
    TMUX_RUNNING=$?
    if [[ TMUX_RUNNING -ne 0 ]]; then
        ZSH_TMUX_AUTOSTART=true
        ZSH_TMUX_AUTOCONNECT=true
    fi
}

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.


if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  ZSH_THEME="bira"
else
  ZSH_THEME="powerlevel9k"
  setTmuxAutostartOnce
fi

if [[ "$TERM" == "linux" ]]; then
  ZSH_THEME="af-magic"
fi

POWERLEVEL9K_MODE='nerdfont-complete'

POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=0

POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=true

POWERLEVEL9K_BACKGROUND_JOBS_FOREGROUND='black'
POWERLEVEL9K_BACKGROUND_JOBS_BACKGROUND='178'
POWERLEVEL9K_NVM_BACKGROUND="238"
POWERLEVEL9K_NVM_FOREGROUND="green"
POWERLEVEL9K_CONTEXT_DEFAULT_FOREGROUND="blue"
POWERLEVEL9K_DIR_WRITABLE_FORBIDDEN_FOREGROUND="015"

POWERLEVEL9K_TIME_BACKGROUND='255'
#POWERLEVEL9K_COMMAND_TIME_FOREGROUND='gray'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_BACKGROUND='245'
POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND='black'

POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir context dir_writable ssh)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs command_execution_time vcs)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_SHOW_CHANGESET=true
POWERLEVEL9K_STATUS_OK=false
POWERLEVEL9K_STATUS_HIDE_SIGNAME=false
POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=10

POWERLEVEL9K_TIME_FORMAT="%D{%y-%m-%dT%H:%M:%S}"


POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=true



POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%F{blue}\u256D\u2500\ue0b2%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%F{blue}\u2570\uf460%F{grey} "

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras sudo systemd web-search svn ubuntu zsh-syntax-highlighting gpg-agent command-not-found common-aliases cp dirhistory tmux)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
DEFAULT_USER=erwin

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

if [ -d ~/work ]; then
    alias w0="cd ~/work"
    alias w15="cd ~/work/2015"
    alias w16="cd ~/work/2016"
    alias w17="cd ~/work/2017"
fi

if [ -d ~/work/Hagenberg ]; then
    alias hgb="cd ~/work/Hagenberg"
    alias esd1="cd ~/work/Hagenberg/ESD1"
    alias esd2="cd ~/work/Hagenberg/ESD2"
    alias esd3="cd ~/work/Hagenberg/ESD3"
    alias esd4="cd ~/work/Hagenberg/ESD4"
    alias hsd1="cd ~/work/Hagenberg/HSD1"
    alias hsd2="cd ~/work/Hagenberg/HSD2"
    alias hsd3="cd ~/work/Hagenberg/HSD3"
    alias hsd4="cd ~/work/Hagenberg/HSD4"
    alias hsd5="cd ~/work/Hagenberg/HSD5"
    alias hsd6="cd ~/work/Hagenberg/HSD6"
fi

if [ -f ~/.zshrc.gf ]; then
    source ~/.zshrc.gf
fi

if [ -f /usr/bin/trash ]; then
    alias rm='trash'
fi

alias tailf='tail -f'
alias reload="source ~/.zshrc"
alias o="xdg-open $1"

# thefuck corr
eval "$(thefuck --alias wtf)"

# powerlevel icons

if [ ! -n "$SSH_CLIENT" ] && [ ! -n "$SSH_TTY" ] && [[ "$TERM" != "linux" ]]; then
    POWERLEVEL9K_HOME_SUB_ICON="$(print_icon "HOME_ICON")"
    POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon "LEFT_SUBSEGMENT_SEPARATOR") "
fi

# Own history for each zsh session
setopt APPEND_HISTORY
unsetopt INC_APPEND_HISTORY
unsetopt SHARE_HISTORY

LIBSTDERREDPATH="/usr/local/lib/libstderred.so"
if [ -f $LIBSTDERREDPATH ]; then
    export LD_PRELOAD="$LIBSTDERREDPATH${LD_PRELOAD:+:$LD_PRELOAD}"
fi

# useful functions
if [ -f $ZSH_CUSTOM/functions.zsh ]; then
    source $ZSH_CUSTOM/functions.zsh
fi
