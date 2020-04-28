# GPG Configuration
export GPG_TTY="$(tty)"
export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
gpgconf --launch gpg-agent

# Node / Composer / RVM
export PATH="/usr/local/bin:/usr/local/sbin:/Users/jacob/.composer/vendor/bin:/Users/jacob/.rvm/bin:$PATH"
export PATH="$PATH:$HOME/.nodenv/bin:$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin"
eval "$(nodenv init -)"

# Python
export PATH="$HOME/.local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# AWS
export PATH="/Users/jacob/.local/lib/aws/bin/aws:$PATH"
