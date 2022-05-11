# Load Antigen
source "$HOME/.config/zsh/antigen.zsh"

antigen init ~/.antigenrc


antigen apply
rm ~/.antigen/init.zsh
alias chillhop="mpv https://www.youtube.com/watch\?v\=7NOSDKb0HlU"
alias stream="xrandr --output DP-5 --rate 60.00 --mode 1920x1080 --right-of HDMI-0"
alias work="xrandr --output DP-5 --rate 30.00 --mode 3840x2160 --right-of HDMI-0"

source "$HOME/.profile"
