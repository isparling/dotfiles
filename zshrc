ZSH=$HOME/.oh-my-zsh
ZSH_THEME="isparling"
DISABLE_AUTO_UPDATE="true"
DISABLE_LS_COLORS="true"
GIT_EDITOR='vim'

plugins=(git bundler brew gem rbates)

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

source $ZSH/oh-my-zsh.sh

# for Homebrew installed rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
alias plz='foreman run bundle exec '
alias pls='foreman run --env .test_env bundle exec '
alias staging='ssh deploy@54.243.229.56'
alias fixtures='rake db:fixtures:eager'
