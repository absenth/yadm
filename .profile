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

if [ -f "/usr/bin/vim" ] ; then
    export EDITOR="/usr/bin/vim"
fi

if [ -f "$HOME/.ssh/secrets.incl" ] ; then
    . $HOME/.ssh/secrets.incl
fi

if [ -f "/usr/bin/nvim" ] ; then
   alias vim="/usr/bin/nvim"
fi

if [ -d "$HOME/.emacs.d/bin" ] ; then
    PATH="$HOME/.emacs.d/bin:$PATH"
fi

if [ -f "$HOME/.cargo/bin/exa" ] ; then
    alias ls="exa"
    alias ll="exa -alh"
    alias tree="exa --tree"
fi

if [ -f "$HOME/.cargo/bin/bat" ] ; then
    alias cat="bat"
fi

if [ -f "/run/user/$UID/podman/podman.sock" ] ; then
    export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
fi
