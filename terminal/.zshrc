# PLUGINS
plugins=(
  git
  zsh-completions
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# ALIASES

# APPS
alias spotify='open /Applications/Spotify.app'
alias browser='open /Applications/Google\ Chrome.app'
alias insomnia='open /Applications/Insomnia.app'
alias slack='open /Applications/Slack.app'

# GIT AND DEV
alias gss="git status -s"
alias gsm="git switch main"
alias gcl="git switch -"
alias gpr="git pull --rebase"
alias gsc="git switch -c"
alias gst="git switch"
alias gprm="gcm && git pull --rebase && gcl"
alias gs="git stash"
alias gsp="git stash pop"
alias grm="git rebase main"
alias gpf="git push --force"
alias gp="git push"
alias n="nvim ."
alias c="cursor ."
alias rc="rails console"
alias rubo="bundle exec rubocop -A"

# WORK
alias ll="cd ~/Documents/Dev/lightlabs/platform"

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# Starship
STARSHIP_CONFIG=${HOME}/.config/starship.toml
eval "$(starship init zsh)"

# Activate Mise
eval "$(mise activate zsh)"
