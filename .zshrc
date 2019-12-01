# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="terminalparty"
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  tmuxinator
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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# alias mvim='/Applications/MacVim.app/Contents/MacOS/MacVim -v'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export EDITOR=vim
# export REACT_EDITOR=mvim
export PATH=$HOME/.composer/vendor/bin:$HOME/.bin:${PATH}
export HOMEBREW_GITHUB_API_TOKEN=cfaa2cd5fed3ae4f570df63edcf2f0a29289e348
export COMPOSER_AUTH='{"github-oauth": {"github.com": "cfaa2cd5fed3ae4f570df63edcf2f0a29289e348"}}'

# export PAGER=vimpager
#eval "$(perl -I$HOME/perl5/lib/perl5 -Mlocal::lib=$HOME/perl5)"
eval "$(nodenv init -)"
alias vj="vim +NERDTree"
alias grep="grep --color"
alias gci="git commit -am"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gdiff="git diff -b -w --ignore-blank-lines --ignore-cr-at-eol --ignore-space-at-eol"
alias zeal='/Applications/Zeal.app/Contents/MacOS/Zeal'
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias gvim="/Applications/MacVim.app/Contents/bin/gvim"


fg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin fg %-
    else
        builtin fg %"$@"
    fi
}

bg() {
    if [[ $# -eq 1 && $1 = - ]]; then
        builtin bg %-
    else
        builtin bg %"$@"
    fi
}

export EBOOK_PATH=/Applications/calibre.app/Contents/MacOS
export GOROOT="/usr/local/opt/go/libexec"
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin:$GOROOT/bin:$EBOOK_PATH"
#export PATH="/usr/local/opt/qt/bin:$PATH"

# export PATH="/usr/local/opt/node@6/bin:$PATH"
fpath=(/usr/local/share/zsh-completions $fpath)
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/opt/zsh-git-prompt/zshrc.sh
source /usr/local/share/zsh-navigation-tools/zsh-navigation-tools.plugin.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
