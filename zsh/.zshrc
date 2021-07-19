# ===========================================================
#  ____  ____  _  _  ____   ___
# (__  )/ ___)/ )( \(  _ \ / __)
#  / _/ \___ \) __ ( )   /( (__
# (____)(____/\_)(_/(__\_) \___)
#
# ===========================================================


# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/.local/bin/

# Path to your oh-my-zsh installation.
export ZSH="/home/jan/.oh-my-zsh"

# Path to custom scripts
export PATH=$PATH:~/Programs/Scripts

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

ZSH_THEME="oxide"
# ZSH_THEME="spaceship"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
 export UPDATE_ZSH_DAYS=7

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
 ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

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
alias n='nnn'
alias la='ls -al'
alias cls="clear"
alias starwars="telnet towel.blinkenlights.nl"
alias p='sudo pacman'
alias search="fzf"
alias weather="clear && curl v2.wttr.in/leuven"
alias i3conf="nvim ~/.config/i3/config"
alias v='nvim'
alias vim='nvim'
alias z='devour zathura'
alias vconf='nvim ~/.config/nvim/init.vim'
alias mutt='neomutt'
alias m='neomutt'
alias keychron='~/Programs/Scripts/bluetooth_keychron'
alias sony='~/Programs/Scripts/bluetooth_sony'
alias proxy='~/Programs/Scripts/proxy.py'
alias im='kitty +kitten icat'
alias term='kitty --detach -d $PWD'
alias mendeley='devour ~/Programs/mendeley-reference-manager.AppImage'
alias feh='devour feh'
alias typeracer='~/Programs/typeracer'
alias ovito='devour ~/Programs/ovito-basic-3.5.3-x86_64/bin/ovito'
alias vmd='devour vmd'
alias athens='devour ~/Programs/Athens/Athens-1.0.0-beta.89.AppImage'
alias lmp='~/Programs/lammps-29Oct20/build/lmp'
alias wiki='nvim ~/Documents/wiki/index.wiki'
alias blender='~/Programs/blender-2.93.1-linux-x64/blender'

# nnn configuration
export TERMINAL="kitty"
export BROWSER="chromium"
export READER="zathura"
export PIX="feh"
export ZIP="unzip"
export EDITOR="nvim"

# Nice logo when launching terminal
#linux_logo -a -f -L 7
ufetch

# vi mode
# bindkey -v

autoload -Uz compinit
compinit
# Completion for kitty
kitty + complete setup zsh | source /dev/stdin

# Source gromacs
#source /usr/local/gromacs/bin/GMXRC
