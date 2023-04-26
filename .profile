# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -d "/usr/local/go" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi

if [ -d "$HOME/.local/share/go" ] ; then
    PATH="$HOME/.local/share/go/bin:$PATH"
fi

if [ -d "$HOME/.emacs.d/bin" ] ; then
    PATH="$HOME/.emacs.d/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin/:$PATH"
fi

if [ -d "/opt/homebrew/bin" ] ; then
    PATH="/opt/homebrew/bin/:$PATH"
fi

if [ -d "/Applications/MacPorts/Emacs.app/Contents/MacOS" ] ; then
    PATH="/Applications/MacPorts/Emacs.app/Contents/MacOS:$PATH"
fi

if [ -f "/Users/absenth/Library/Python/3.8/bin/ansible" ] ; then
    PATH="/Users/absenth/Library/Python/3.8/bin/:$PATH"
fi

if [ -f "$HOME/.ssh/secrets.incl" ] ; then
    . $HOME/.ssh/secrets.incl
fi

if [ -f "/usr/bin/nvim" ] ; then
   alias vim="/usr/bin/nvim"
fi

if [ -f "/opt/homebrew/bin//nvim" ] ; then
   alias vim="/opt/homebrew/bin//nvim"
fi

if [ -f "$HOME/.local/bin/lvim" ] ; then
  alias vim="$HOME/.local/bin/lvim"
fi

if [ -f "/usr/bin/vim" ] ; then
    export EDITOR="vim"
fi

if [ -f "/run/user/$UID/podman/podman.sock" ] ; then
    export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
fi

# Rust powered utilities

if [ -f "$HOME/.cargo/env" ] ; then
  source $HOME/.cargo/env
fi

if [ -f "$HOME/.cargo/bin/exa" ] ; then
    alias ls="exa"
    alias ll="exa -alh"
    alias tree="exa --tree"
fi

if [ -f "/usr/bin/exa" ] ; then
    alias ls="exa"
    alias ll="exa -alh"
    alias tree="exa --tree"
fi

if [ -f "$HOME/.cargo/bin/bat" ] ; then
    alias cat="bat"
fi

if [ -f "$HOME/.cargo/bin/hyperfine" ] ; then
    alias time="hyperfine"
fi

if [ -f "$HOME/.cargo/bin/dust" ] ; then
    alias du="dust"
fi

if [ -f "/opt/homebrew/bin//python3.11" ] ; then
  alias python3="/opt/homebrew/bin//python3.11"
fi


export GOPATH=~/.local/share/go

export PATH=$PATH:/Library/Java/JavaVirtualMachines/graalvm-ce-java11-22.3.0-dev/Contents/Home/bin
export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-22.3.0-dev/Contents/Home
. "$HOME/.cargo/env"
