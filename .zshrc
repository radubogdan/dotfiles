# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

ZSH_THEME="alanpeabody"


plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/local/games:/usr/games
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EMAIL=croitoruradubogdan@gmail.com

# My aliases
alias tmux="tmux -2"
alias ifconfig="/sbin/ifconfig -a"
alias mpd="mpd ~/.mpd/mpd.conf"

alias pys3="python -m http.server"
alias pys="python -m SimpleHTTPServer"
alias agu="sudo apt-get update"
alias agup="sudo apt-get upgrade"
alias acp="sudo apt-cache policy"
alias acs="sudo apt-cache search"
alias agi="sudo apt-get install"
alias agr="sudo apt-get purge"
alias autoremove="sudo apt-get autoremove"
alias awhy="sudo aptitude why"
alias awhich="sudo aptitude which"

alias be="bundle exec"
alias gc="git clone"
alias gp="git pull"
alias gch="git checkout"

export PERL_LOCAL_LIB_ROOT="$PERL_LOCAL_LIB_ROOT:/home/dot/perl5";
export PERL_MB_OPT="--install_base /home/dot/perl5";
export PERL_MM_OPT="INSTALL_BASE=/home/dot/perl5";
export PERL5LIB="/home/dot/perl5/lib/perl5:$PERL5LIB";
export PATH="/home/dot/perl5/bin:$PATH";
