# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Check if Oh My Zsh is installed
if [[ ! -e $ZSH ]]; then
    mkdir -p $ZSH
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
elif [[ ! -d $ZSH ]]; then
    echo "$ZSH already exists but is not a directory" 1>&2
fi

ZSH_POWERLEVEL9K=$ZSH/custom/themes/powerlevel9k

# Check if Powerlevel9k is installed
if [[ ! -e $ZSH_POWERLEVEL9K ]]; then
    mkdir -p $ZSH_POWERLEVEL9K
    git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
elif [[ ! -d $ZSH_POWERLEVEL9K ]]; then
    echo "$ZSH_POWERLEVEL9K already exists but is not a directory" 1>&2
fi

# Power Line configuration
POWERLEVEL9K_MODE='awesome-patched'
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon dir vcs)
POWERLEVEL9KRIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby mercurial mvn npm osx rbenv screen sublime svn rbenv rand-quote colored-man-pages colorize ubuntu)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export SBT_OPTS="-Xmx2G -XX:+UseConcMarkSweepGC -XX:+CMSClassUnloadingEnabled -Xss2M"

# Plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

export JAVA_HOME=$(/usr/libexec/java_home)

export HOMEBREW_GITHUB_API_TOKEN="6c2d3d81d593248b467fd972635d9ac75b2028d5"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/ammachado/.sdkman"

[[ -s "/Users/ammachado/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/ammachado/.sdkman/bin/sdkman-init.sh"
export PATH="/usr/local/sbin:$PATH"

fpath=(/usr/local/share/zsh-completions $fpath)

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
