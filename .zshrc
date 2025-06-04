# source profile
source ~/.profile

# Ensure Oh My Posh is installed
# Use OS Specific Installation Methods
if ! command -v "oh-my-posh" &> /dev/null ; then
  if [[ ${OSTYPE} == "darwin"* ]] ; then
    brew install jandedobbeleer/oh-my-posh/oh-my-posh
  fi

  if [[ ${OSTYPE} == "linux"* ]] ; then
    curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin
  fi

  if [[ ${OSTYPE} == "freebsd"* ]] ; then
    curl -s https://ohmyposh.dev/install.sh | bash -s -- -d ~/bin
  fi
fi

# Setup and use Oh-My-Posh
eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

# Keybindings
bindkey -e
bindkey "^h" backward-word
bindkey "^l" forward-word

# zsh-options
autoload -U select-word-style
select-word-style bash
export WORDCHARS='.-'
fpath=($HOME/.config/zsh/Plugins/zsh-completions/src $fpath)

# History
HISTSIZE=5000
HISTFILE=$HOME/.zsh_history
HISTDUPE=erase
setopt BANG_HIST
setopt EXTENDED_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_SAVE_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt glob_dots

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={a-zA-Z}' 'r:|=*' 'l:|=*' 'r:|=*'
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}

# zsh Plugins
source $HOME/.config/zsh/Plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.config/zsh/Plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
