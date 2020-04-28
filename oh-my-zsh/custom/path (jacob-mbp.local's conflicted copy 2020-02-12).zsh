# Node / Composer / RVM
export PATH="/usr/local/bin:/usr/local/sbin:/Users/jacob/.composer/vendor/bin:/Users/jacob/.rvm/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# Python
export PATH="$HOME/.local/bin:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Go
export GOPATH="$HOME/Code/go"
export GOBIN="$HOME/Code/go/bin"
export PATH="$HOME/Code/go:$HOME/Code/go/bin:$PATH"

# AWS
export PATH="/Users/jacob/.local/lib/aws/bin/aws:$PATH"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jacob/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jacob/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jacob/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jacob/google-cloud-sdk/completion.zsh.inc'; fi
