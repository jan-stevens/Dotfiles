#  ____  ____  _  _  ____   ___ 
# (__  )/ ___)/ )( \(  _ \ / __)
#  / _/ \___ \) __ ( )   /( (__ 
# (____)(____/\_)(_/(__\_) \___)

# ===========================================================


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/jan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes

#ZSH_THEME="powerlevel10k/powerlevel10k"
#ZSH_THEME="spaceship"
#ZSH_THEME="pi"
ZSH_THEME="oxide"
#ZSH_THEME="nox"
#ZSH_THEME="bureau"
#ZSH_THEME="bullet-train"

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
 export UPDATE_ZSH_DAYS=3

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
plugins=(git zsh-autosuggestions zsh-syntax-highlighting tmux)

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
 alias sysinfo='neofetch'
 alias goDNA='/home/jan/Documents/oxDNA/build/bin/oxDNA'
 alias gocogli1='/home/jan/Documents/cogli1/build/bin/cogli1'
 alias n='nnn'
 alias vim='nvim'
 alias display='arandr'
 alias sound='pavucontrol'
 alias popcorn='/home/jan/Programs/Popcorn-Time/Popcorn-Time'
  alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"
 alias cls="clear"
 alias starwars="telnet towel.blinkenlights.nl"
 alias logout='i3-msg exit'
 alias bluetooth="bluetoothctl"
 alias p='sudo pacman'
 alias config='/usr/bin/git --git-dir=/home/jan/Dotfiles --work-tree=/home/jan'
 alias ref='cat ~/.config/ref.txt'
 alias keybindings='cat ~/.config/keybindings.txt'
 alias search="fzf"
 alias weather="clear && curl v2.wttr.in/leuven"
 alias i3conf="micro ~/.config/i3/config"
 alias bat='upower -i /org/freedesktop/UPower/devices/keyboard_hid_dco2co26ocdo37o75_battery | grep -E "state|to\ full|percentage"'
 alias printer='system-config-printer'
 alias lmp='~/lammps-7Aug19/src/lmp_serial'
#Powerlevel 9k Configuration

POWERLEVEL9K_MODE='nerdfont-complete'

#DISABLE_AUTO_TITLE="true"

POWERLEVEL9K_BATTERY_CHARGING='yellow'
POWERLEVEL9K_BATTERY_CHARGED='green'
POWERLEVEL9K_BATTERY_DISCONNECTED='$DEFAULT_COLOR'
POWERLEVEL9K_BATTERY_LOW_THRESHOLD='10'
POWERLEVEL9K_BATTERY_LOW_COLOR='red'
POWERLEVEL9K_BATTERY_ICON='\uf1e6 '
POWERLEVEL9K_BATTERY_VERBOSE='false'

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='99D3F0'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='99D3F0'

POWERLEVEL9K_TIME_BACKGROUND="black"
POWERLEVEL9K_TIME_FOREGROUND="yellow"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"

POWERLEVEL9K_DATE_BACKGROUND="blue"
POWERLEVEL9K_DATE_FOREGROUND="black"

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=''
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX='\uf0da'

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B0'
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR=$'\uE0B2'

POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='99D3F0'
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='99D3F0'

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=('battery' 'context' 'dir' 'vcs')
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=('status' 'time' 'date')

POWERLEVEL9K_SHORTEN_STRATEGY="truncate_middle"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=4

POWERLEVEL9K_STATUS_VERBOSE=false

POWERLEVEL9K_PROMPT_ON_NEWLINE=true


#nnn configuration
export NNN_USE_EDITOR=1
export TERMINAL="kitty"
export BROWSER="brave"
export READER="mupdf"
export PIX="feh"
export ZIP="unzip"
export EDITOR="/usr/bin/micro"

#A nice logo when launching terminal
#linux_logo -a -f -L 7
#pfetch
ufetch
#cpufetch
