# personal things
export MAIL="hi@l33t.name"

# Set LANG to en_US.UTF-8
export LANG=en_US.UTF-8

export ZSH=~/.zsh

# Load all of the config files in ~/oh-my-zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

# custom bundle install
alias bundll="bundle install --binstubs --path vendor"

# socks proxy
alias proxy="ssh -D 1080 -N socks"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
