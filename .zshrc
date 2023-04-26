# Load Antigen
source "$HOME/.config/zsh/antigen.zsh"
source "$HOME/.profile"

antigen init ~/.antigenrc


antigen apply
alias chillhop="mpv https://www.youtube.com/watch\?v\=7NOSDKb0HlU"
alias stream="xrandr --output DP-5 --rate 60.00 --mode 1920x1080 --right-of HDMI-0"
alias work="xrandr --output DP-5 --rate 30.00 --mode 3840x2160 --right-of HDMI-0"

source "$HOME/.profile"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/absenth/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/absenth/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/absenth/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/absenth/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

if [ -f '/opt/homebrew/bin//starship' ] ; then eval "$(starship init zsh)"; fi
