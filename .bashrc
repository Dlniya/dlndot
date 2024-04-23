
# load starship
source <(starship init bash --print-full-init)
# utils
source $HOME/.config/bash/utils/welcome-banner.sh

# Load bash completion
if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

# Load aliases
if [ -f $HOME/.config/bash/aliases.sh ]; then
  . $HOME/.config/bash/aliases.sh
fi

# Welcome message
# If not running in nested shell, then show welcome message :)
if [[ "${SHLVL}" -lt 2 ]] && \
  { [[ -z "$SKIP_WELCOME" ]] || [[ "$SKIP_WELCOME" == "false" ]]; }; then
  welcome
fi

# aliases