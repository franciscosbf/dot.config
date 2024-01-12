# Ensures tilix gets all necessary information from /etc/profile.d
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
	source /etc/profile.d/vte.sh
fi

# direnv
eval "$(direnv hook bash)"

# If it isn't running interactively, do nothing
[[ $- != *i* ]] && return

# User Prompt
OPARENTHESES_PS1="\[\033[01;33m\](\[\033[0m\]"
CPARENTHESES_PS1="\[\033[01;33m\])\[\033[0m\]"
SYMBOL_PS1="\[\033[01;33m\]♠\[\033[0m\]"
USER_PS1="\[\033[01;31m\]\u\[\033[0m\]"
ARROBA_PS1="\[\033[01;33m\]@\[\033[0m\]"
HOST_PS1="\[\033[01;35m\]\h\[\033[0m\]"
DIR_PS1="\[\033[01;32m\]\w\[\033[0m\]"
HOUR_PS1="\[\033[01;36m\]\@\[\033[0m\]"
PS1="${OPARENTHESES_PS1} ${USER_PS1}${ARROBA_PS1}${HOST_PS1} ${HOUR_PS1} ${CPARENTHESES_PS1} ${DIR_PS1}\n ${SYMBOL_PS1} "

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
STAY="cmake|gcc" # e.g. a|b|...
pacre() {
	pacman -Qtd | awk '!/'$STAY'/{print $1}' | sudo pacman -Rns -
}

# Check file type and extract it
extract() {
	if [ -f $1 ]; then
		case $1 in
		*.tar.bz2) tar xjf $1 ;;
		*.tar.gz) tar xzf $1 ;;
		*.bz2) bzip2 $1 ;;
		*.rar) unrar x $1 ;;
		*.tar) tar xf $1 ;;
		*.tbz2) tar xjf $1 ;;
		*.tgz) tar xzf $1 ;;
		*.zip) unzip $1 ;;
		*.Z) uncompress $1 ;;
		*.tar.xz) tar xf $1 ;;
		*.tar.zst) unzstd $1 ;;
		*.gz) gzip -dk $1 ;;
		*) echo "Couldn't match any format for $1" ;;
		esac
	else
		echo "$1 isn't a file!"
	fi
}

# Remove duplicated commands from history file
export HISTCONTROL=ignoreboth:erasedups

# Add go bin to PATH
export PATH="$PATH:$(go env GOBIN):$(go env GOPATH)/bin"

# Add cargo bin to PATH
export PATH="$PATH:$HOME/.cargo/bin"

# Add local bin to PATH
export PATH="$PATH:$HOME/.local/bin"
