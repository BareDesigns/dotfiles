# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/jonphinguyen/.oh-my-zsh

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
  git
)

source $ZSH/oh-my-zsh.sh

# Set personal aliases,
# For a full list of active aliases, run `alias`.

# General Aliases
alias ls="colorls"
alias ei="exit"
alias tt="tmux"
alias reddit="rtv"
alias py="python3.7"
alias bb="cd -"
alias rfo="rm -rf"
alias vi="nvim"
alias vrc="sudo nvim ~/.config/nvim/init.vim"
alias gty="gtypist"
alias pip3="python3.7 -m pip"


# GIT
alias gs="git status"
alias gc="git commit -m"
alias gplo="git pull origin master"
alias gpuo="git push origin master"
alias gplg="git pull github"
alias gpug="git push github"


# TaskWarrior
alias tk="task"
alias ta="task add"
alias taw="task add project:work"
alias tap="task add project:personal"
alias tas="task add project:school"
alias tc="task context"


# Youtube-DL
alias yty="youtube-dl -o '%(uploader)s/%(playlist)s/%(playlist_index)s - %(title)s.%(ext)s'" 
alias ytu="youtube-dl -o '~/MyVideos/%(playlist)s/%(chapter_number)s - %(chapter)s/%(title)s.%(ext)s'"
alias ydl="youtube-dl "
alias ymp3="youtube-dl --extract-audio --audio-format mp3 "

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
