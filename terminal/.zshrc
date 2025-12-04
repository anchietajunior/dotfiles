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
alias g="git"
alias gss="git status -s"
alias gsw="git switch"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias n="nvim ."
alias c="cursor ."

# RAILS
alias rc="rails console"
alias rubocop="bundle exec rubocop -A"
alias server="bin/dev"

# WORK
alias ll="cd ~/Documents/Dev/lightlabs/platform"

# Starship
STARSHIP_CONFIG=${HOME}/.config/starship.toml
eval "$(starship init zsh)"

source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Activate Mise
eval "$(mise activate zsh)"

