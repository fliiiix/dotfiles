# Set LANG to en_US.UTF-8
export LANG=en_US.UTF-8

export ZSH=~/.zsh

export PATH=$PATH:/usr/local/share/python

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

# added by travis gem
[ -f /home/l33tname/.travis/travis.sh ] && source /home/l33tname/.travis/travis.sh

# custom bundle install
alias bundll="bundle install --binstubs --path vendor"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
