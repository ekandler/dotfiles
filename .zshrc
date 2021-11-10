# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/erwin/.oh-my-zsh"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM=$HOME/.oh-my-zsh-custom

# useful functions
if [ -f $ZSH_CUSTOM/functions.zsh ]; then
    source $ZSH_CUSTOM/functions.zsh
fi


# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# When connected from ssh, don't start with powerline font based themes
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  ZSH_THEME="bira"
else
  ZSH_THEME="powerlevel10k/powerlevel10k"
  setTmuxAutostartOnce
fi

# Use a really basic theme when connecting via tty
if [[ "$TERM" == "linux" ]]; then
  ZSH_THEME="af-magic"
fi

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#5e5e5e"
ZSH_AUTOSUGGEST_STRATEGY=(completion history)


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-extras sudo systemd web-search ubuntu zsh-autosuggestions zsh-syntax-highlighting gpg-agent command-not-found common-aliases cp dirhistory tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


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
    alias w18="cd ~/work/2018"
    alias w19="cd ~/work/2019"
    alias w20="cd ~/work/2020"
    alias w21="cd ~/work/2021"
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

if [ -f ~/.zshrc.pv ]; then
    source ~/.zshrc.pv
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

# Needs stdeered from https://github.com/sickill/stderred
LIBSTDERREDPATH="/usr/local/lib/libstderred.so"
if [ -f $LIBSTDERREDPATH ]; then
    export LD_PRELOAD="$LIBSTDERREDPATH${LD_PRELOAD:+:$LD_PRELOAD}"
fi

# add snap-bin to path
pathadd "/snap/bin"
pathadd "$HOME/bin"

# set vim as default editor
export EDITOR='vim'
export VISUAL='vim'
