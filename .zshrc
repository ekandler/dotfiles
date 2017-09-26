# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k"


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
plugins=(git git-extras sudo systemd web-search svn ubuntu zsh-syntax-highlighting gpg-agent command-not-found common-aliases cp dirhistory)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
DEFAULT_USER=erwin

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
alias w0="cd ~/work"
alias w15="cd ~/work/2015"
alias w16="cd ~/work/2016"
alias w17="cd ~/work/2017"

alias reload="source ~/.zshrc"
alias o="xdg-open $1"

# thefuck corr
eval $(thefuck --alias)

# powerlevel icons
POWERLEVEL9K_HOME_SUB_ICON="$(print_icon "HOME_ICON")"
POWERLEVEL9K_DIR_PATH_SEPARATOR=" $(print_icon "LEFT_SUBSEGMENT_SEPARATOR") "
