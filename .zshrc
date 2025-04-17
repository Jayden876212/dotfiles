# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

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
# zstyle ':omz:update' mode disabled  # disable automatic updates
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
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	zsh-vi-mode
	zsh-syntax-highlighting
	zsh-autosuggestions
	fzf
)

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

#export HYPRLAND_TRACE=1 AQ_TRACE=1


# Aliases

alias startwm="dash ${HOME}/.scripts/startwm.sh"
alias uf2conv="python ${HOME}/micropython/tools/uf2conv.py"

alias .="cd ."
alias ..="cd .."
alias ...="cd ..."
alias ....="cd ...."
alias .....="cd ....."

#alias cmatrix="cmatrix -C blue"
alias cmatrix="neo --defaultbg --fps=144 --color=blue"

alias pipes="pipes-rs"
alias fastfetch="fastfetch --logo-color-1 blue --logo-color-2 black --color blue --colors-symbol circle --pipe false"
alias fetch="fastfetch"

alias whatsapp="nchat"
alias signal="gurk"
#alias discord="discordo"
alias youtube="invidtui --video-res '1080p'"
alias yt="youtube"
alias music="cmus"
alias mus="music"
alias volume="pulsemixer"
alias vol="volume"
alias hwsound="alsamixer"

alias auth="totp-cli"
alias bw="doas bw --pretty"

alias taskmanager="btop"
alias tm="taskmanager"

alias graphicstaskmanager="nvtop"
alias gtm="graphicstaskmanager"

alias ls="eza"

alias s="s --provider 'duckduckgo'"
sw() {
    s "!$1 $2"
}

alias reboot="doas /sbin/reboot"
alias poweroff="doas /sbin/poweroff"

alias e="doas emerge --ask --oneshot"

alias open="xdg-open"

alias news="newsboat -r"
alias enews="eselect news read && doas eselect news purge all"

## LibeOffice Aliases

alias impress="libreoffice --impress --norestore --nologo"
alias powerpoint="impress"
alias ppt="powerpoint"

alias writer="libreoffice --writer"
alias word="writer"
alias doc="word"

alias obsidian="/opt/Obsidian/obsidian --ozone-platform-hint=auto --enable-features=UseOzonePlatform,WaylandWindowDecorations"

alias stopwatch="python /home/tdljayden/tools/stopwatch.py"

alias searxng="zsh $HOME/.scripts/searxng-zsh.sh"

#alias radicale="/home/tdljayden/radicale_storage_decsync/.venv/bin/python3 -m radicale --config "~/.config/radicale/config.conf""

alias journal-timer="tclock -c LightCyan timer -d 10m"

alias sqlite3="sqlite3 -column -header -markdown"
alias gym_data='sqlite3 "/home/tdljayden/sync/notes/Knowledge/College/T Level in Digital Production, Design, and Development/Year 2 - Occupational Specialism/SQL/gym_data.db"'

alias USE="doas equery u"

## keydrive (for Secure Boot)

alias "keydrive-open"="/usr/bin/doas /bin/sh /home/tdljayden/.scripts/keydrive-open.sh"
alias "keydrive-close"="/usr/bin/doas /bin/sh /home/tdljayden/.scripts/keydrive-close.sh"

#alias "make"="bear -- make"

# Ensure we are in the right directory
cd

#alias dnvim="doas nvim"
alias sysup="e -uDN @world"
alias sudo="doas"
alias pandoc="pandoc --pdf-engine=weasyprint \
                     --pdf-engine-opt=--pdf-variant=pdf/ua-1"

export MANPAGER="nvim +Man!"

#export HSA_ENABLE_SDMA=0
#export HSA_OVERRIDE_GFX_VERSION=10.3.1
alias deepseek="ollama run deepseek-r1:7b"

alias amdgpu_top="amdgpu_top --dark"


export PATH=$HOME/bin:/usr/local/bin:$PATH:$HOME/go/bin

# Runtime fetch splash
fetch
