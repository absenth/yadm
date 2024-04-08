# Load Antigen
source "$HOME/.config/zsh/antigen.zsh"
source "$HOME/.profile"

antigen init ~/.antigenrc

antigen apply

source "$HOME/.profile"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/absenth/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/absenth/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/absenth/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/absenth/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

if [ -f '/opt/homebrew/bin/starship' ] ; then eval "$(starship init zsh)"; fi
