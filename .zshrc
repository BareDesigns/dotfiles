export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/jon/.oh-my-zsh"

# Set name of the theme to load.
ZSH_THEME="robbyrussell"

# Set list of themes to load
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=5

# Disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

# Display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Disable marking untracked files
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Change the command execution time
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git python vscode
)

source $ZSH/oh-my-zsh.sh

# Set personal aliases,
# For a full list of active aliases, run `alias`.

# General Aliases
alias ls="colorls"
alias ei="exit"
alias tt="tmux"
alias rtv="rtv --enable-media"
alias py="python3.7"
alias python="python3.7"
alias bb="cd -"
alias rfo="rm -rf"
alias vrc="sudo nvim ~/.config/nvim/init.vim"
alias gty="gtypist"
alias pip3="python3.7 -m pip"
alias neofetch='neofetch --source ~/dotfiles/Wallpapers/Wife\ Glitch.png --size 35% --backend iterm2'
alias p2up='pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 pip install -U'
alias p3up='python3.7 -m pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs -n1 python3.7 -m pip install -U'

# BREW
alias bw="brew upgrade | brew cask upgrade | brew cleanup"

# GIT
# alias gs="git status"
# alias gd="nvim -d"
# alias gc="git commit -m"
# alias glo="git pull origin master"
# alias guo="git push origin master"
# alias glg="git pull github"
# alias gug="git push github"

# Brew

alias bu="brew upgrade"
alias bc="brew cleanup"
alias bcu="brew cask upgrade"

# Youtube-DL
alias yty="youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'" 
alias ytu="youtube-dl -o '~/MyVideos/%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s'"
alias ydl="youtube-dl --prefer-ffmpeg --merge-output-format mkv "
alias ymp3="youtube-dl --extract-audio --audio-format mp3 "
alias wgetMKV='wget -A "*.mp3" -r'

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export PATH="/usr/local/sbin:$PATH"
# source /usr/local/share/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
