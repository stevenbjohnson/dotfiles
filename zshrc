### My Path ###
export PATH=$HOME/bin:/usr/local/opt/postgresql@9.6/bin/:$PATH

### My Aliases ###

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/stevenjohnson/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME=random

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
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

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

alias gh='GITHUB_TOKEN=$(/usr/bin/sudo cat ~/.secrets/gh) gh'
alias ghv='gh pr view'
alias ghw='gh pr view --web'
alias ghc='gh pr checks'
alias ghd='gh pr diff'
alias ghm='gh pr merge && gpl'
alias ghs='gh pr status'
function gppr() { if [ -f bin/gppr ]; then bin/gppr; else gh pr create -a stevenbjohnson; fi }

source /usr/local/bin/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

antigen bundle git
antigen bundle arialdomartini/oh-my-git
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle chucknorris

# antigen theme robbyrussell
antigen theme https://gist.github.com/stevenbjohnson/1f8c819b6cf445c04bc70679ea301acc steven-style
# antigen theme https://gist.github.com/5b0c67179aa076ff53e7c03c4191eec3 joe-style
export omg_ungit_prompt="%B%F{252}%~%f%b 🌿%B%F{19}❯%F{252}❯%F{22}❯%f%b "

antigen apply

# plugins=(
#   git
#   chucknorris
#   zsh-syntax-highlighting
#   zsh-autosuggestions
# )

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

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

# get my branches diff using diff-tree
mydiff ()
{
    diff-tree | tee >(pbcopy)
}

# prompt_context() {
 # Custom (Random emoji)
 #  emojis=("⚡️" "🔥" "💀" "👑" "😎" "🐸" "🐵" "🦄" "🌈" "🍻" "🚀" "💡" "🎉" "🔑" "🚦" "🌙")
  # RAND_EMOJI_N=$(( $RANDOM % ${#emojis[@]} + 1))
  # prompt_segment black default "${emojis[$RAND_EMOJI_N]} "
# }

eval "$(rbenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias gscf='git diff --name-status master..'
alias gsnmf="gscf | awk '/^[^D]/{print \$2}'"
alias gspec="gsnmf | grep '^spec' | xargs bundle exec rspec"
alias grucop="gsnmf | grep '.rb' | xargs bundle exec rubocop"
alias be="bundle exec"

. $HOME/.asdf/asdf.sh

. $HOME/.asdf/completions/asdf.bash

[ -s "/Users/stevenjohnson/.scm_breeze/scm_breeze.sh" ] && source "/Users/stevenjohnson/.scm_breeze/scm_breeze.sh"

### work ###
[ -f ~/.config/workrc ] && source ~/.config/workrc

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

