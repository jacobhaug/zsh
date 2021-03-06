# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block, everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# ZSH Path
export ZSH="$HOME/.oh-my-zsh"

# Setting ZSH Theme
ZSH_THEME="powerlevel10k/powerlevel10k"
POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(os_icon user dir_writable dir vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status command_execution_time root_indicator background_jobs time disk_usage ram)
#POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
#POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
#POWERLEVEL9K_USER_ICON="\uF415" # 
POWERLEVEL9K_ROOT_ICON="\uF09C"
#POWERLEVEL9K_SUDO_ICON=$'\uF09C' # 
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
POWERLEVEL9K_DISABLE_GITSTATUS=true
#POWERLEVEL9K_VCS_GIT_ICON='\uF408 '
#POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uF408 '

# ZSH Tuning
ZSH_DISABLE_COMPFIX=true
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"

# ZSH Auto Suggestions
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=\'fg=60\'

# ZSH Plugins
plugins=(
  git
  git-flow
  git-extras
  iterm2
  macports
  man
  osx
  python
  composer
  zsh-syntax-highlighting
  zsh-autosuggestions
)

# Sourcing ZSH
source $ZSH/oh-my-zsh.sh

# User configuration
alias c='clear'
alias root='sudo su -'
alias suroot='sudo -E -s'

# Sourcing Path
source $ZSH/custom/path.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
