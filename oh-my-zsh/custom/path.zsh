# Node / Composer / RVM
export PATH="/usr/local/bin:/usr/local/sbin:/Users/jacob/.composer/vendor/bin:/Users/jacob/.rvm/bin:$PATH"
export PATH="$HOME/.nodenv/bin:$PATH"
eval "$(nodenv init -)"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jacob/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jacob/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jacob/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jacob/google-cloud-sdk/completion.zsh.inc'; fi
