# personal things
export MAIL="hi@l33t.name"

# Set LANG to en_US.UTF-8
export LANG=en_US.UTF-8

# ignore .vim folder when i want to open vim
export CORRECT_IGNORE_FILE='.vim'

# Load all of the config files that end in .zsh
for config_file (~/.zsh/lib/*.zsh) source $config_file

# Load and run compinit
autoload -U compinit
compinit -i

# custom bundle install
alias bundlsetup="bundle config set path 'vendor'"
alias bundll="bundlsetup && bundle install && bundle binstubs --standalone --all"

# socks proxy
alias proxy="ssh -D 1080 -N socks"

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"
