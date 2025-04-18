# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git golang docker docker-compose minikube kubectl zsh-autosuggestions)

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

# direnv
eval "$(direnv hook zsh)"

# Miscellaneous aliases
alias myip='echo "External IP: $(curl -s ipinfo.io/ip)"'
alias ls='ls --color=auto'
alias grep='grep --colour=auto'
alias ..='cd ..'
alias mv='mv -vi'
alias rm='rm -vi'
alias rmd='rm -rf'
alias cp='cp -vi'
alias ll='ls -ialF'
alias qman='wikiman'

# Keep pacman and yay separated + ignore some updates
IGNORE="" # e.g. a,b,c,...
alias yay='yay --aur'

# Remove unnecessary packages, excluding those that u want to remain
STAY="" # e.g. a|b|...
pacre() {
    pacman -Qtd | awk '!/'$STAY'/{print $1}' | sudo pacman -Rns -
}

# Check file type and extract it
extract() {
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2) tar xjf $1    ;;
      *.tar.gz)  tar xzf $1    ;;
      *.bz2)     bzip2 $1      ;;
      *.rar)     unrar x $1    ;;
      *.tar)     tar xf $1     ;;
      *.tbz2)    tar xjf $1    ;;
      *.tgz)     tar xzf $1    ;;
      *.zip)     unzip $1      ;;
      *.Z)       uncompress $1 ;;
      *.tar.xz)  tar xf $1     ;;
      *.tar.zst) unzstd $1     ;;
      *.gz)      gzip -dk $1   ;;
      *.7z)      7za x $1      ;;
      *)         echo "Couldn't match any format for $1";;
    esac
  else
    echo "$1 isn't a file!"
  fi
}

# Remove duplicated commands from history file
setopt HIST_IGNORE_ALL_DUPS

# Add go bin to PATH
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# Invoke plugins directly using the plugin shortcut with nnn.
export NNN_PLUG='f:finder;o:fzopen;p:mocq;d:diffs;t:nmount;v:imgview'

# Configure nnn to cd to the $PWD of the exited subshell.
nnn_cd()
{
    if ! [ -z "$NNN_PIPE" ]; then
        printf "%s\0" "0c${PWD}" > "${NNN_PIPE}" !&
    fi
}
trap nnn_cd EXIT

# Add cargo bins to PATH
export PATH="$PATH:$HOME/.cargo/bin"

# Add local bin to PATH
export PATH="$PATH:$HOME/.local/bin"

# Add texlive to PATH, MANPATH and INFOPATH
export PATH="$PATH:/usr/local/texlive/2024/bin/x86_64-linux"
export MANPATH="$MANPATH:/usr/local/texlive/2024/texmf-dist/doc/man"
export INFOPATH="$INFOPATH:/usr/local/texlive/2024/texmf-dist/doc/info"

# Add kubebuilder autocompletion
if [ -f /usr/local/share/zsh-completion/zsh_completion ]; then
. /usr/local/share/zsh-completion/zsh_completion
fi
. <(kubebuilder completion zsh)

# Add maelstrom to PATH
export PATH="$PATH:$HOME/maelstrom"

# Force me to not use rm
alias rm='echo "This is not the command you are looking for."; false'
