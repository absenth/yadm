# In order to manage a single .Profile for multiple operating
# systems.  We'll use a case statement to build OS specific
# PATH variables.

if [[ ${OSTYPE} == "darwin"* ]] ; then
	if [ -d "/opt/homebrew/bin" ] ; then
		PATH="/opt/homebrew/bin:$PATH"
	fi

    if [ -d "/Applications/MacPorts/Emacs.app/Contents/MacOS" ] ; then
        PATH="/Applications/MacPorts/Emacs.app/Contents/MacOS:$PATH"
    fi

    if [ -d "Library/Java/JavaVirtualMachines/graalvm-ce-java11-22.3.0-dev/Contents/Home/bin" ] ; then
        export PATH=$PATH:/Library/Java/JavaVirtualMachines/graalvm-ce-java11-22.3.0-dev/Contents/Home/bin:/usr/local/bin
        export JAVA_HOME=/Library/Java/JavaVirtualMachines/graalvm-ce-java11-22.3.0-dev/Contents/Home
    fi
fi

if [[ ${OSTYPE} == "freebsd"* ]] ; then
	source $HOME/.freebsd.conf
fi

# Ensure Required zsh Plugins are installed
if [ ! -d "$HOME/.config/zsh/Plugins/zsh-autosuggestions" ] ; then
    git clone https://github.com/zsh-users/zsh-autosuggestions $HOME/.config/zsh/Plugins/zsh-autosuggestions
fi
if [ ! -d "$HOME/.config/zsh/Plugins/zsh-completions" ] ; then
    git clone https://github.com/zsh-users/zsh-completions $HOME/.config/zsh/Plugins/zsh-completions
fi
if [ ! -d "$HOME/.config/zsh/Plugins/zsh-syntax-highlighting" ] ; then
    git clone https://github.com/zsh-users/zsh-syntax-highlighting $HOME/.config/zsh/Plugins/zsh-syntax-highlighting
fi


# Setup PATH variables that don't depend on the Operating System
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

if [ -d "$HOME/.cargo/bin" ] ; then
    PATH="$HOME/.cargo/bin:$PATH"
fi

if [ -f "$HOME/.cargo/env" ] ; then
  source $HOME/.cargo/env
fi

if [ -d "$HOME/.cache/rebar3/bin" ] ; then
    PATH="$HOME/.cache/rebar3/bin:$PATH"
fi

if [ -d "$HOME/bin/zig" ] ; then
    PATH=$PATH:$HOME/bin/zig
fi

if [ -d "$HOME/bin/zls" ] ; then
    PATH=$PATH:$HOME/bin/zls
fi

if [ -d "$HOME/.cache/rebar3/bin:$PATH" ] ; then
    PATH=$PATH:$HOME/.cache/rebar3/bin
fi

if [ -d "$HOME/.local/share/go" ] ; then
    PATH="$HOME/.local/share/go/bin:$PATH"
fi

if [ -d "$HOME/.emacs.d/bin" ] ; then
    PATH="$HOME/.emacs.d/bin:$PATH"
fi

if [ -d "$HOME/.config/emacs/bin" ] ; then
    PATH="$HOME/.config/emacs/bin/:$PATH"
fi

if [ -f "$HOME/.config/fabric/.profile" ] ; then
	source $HOME/.config/fabric/.profile
fi

if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin/:$PATH"
fi

if [ -d "/usr/local/go" ] ; then
    PATH="/usr/local/go/bin:$PATH"
fi

if [ -d "/usr/local/bin/" ] ; then
    PATH="/usr/local/bin/:$PATH"
fi

if [ -d "$HOME/.lmstudio/bin" ] ; then
	PATH="$HOME/.lmstudio/bin;$PATH"
fi

if [ -d "$HOME/.config/envman" ] ; then
	[ -s "$HOME/.config/envman/load.sh" ] && source "$HOME/.config/envman/load.sh"
fi

if [ -d "$HOME/.lmstudio/" ] ; then
	export PATH="$HOME/.lmstudio/bin:$PATH"
fi


# Setup applications and aliases based on availability
# Avoid enumerating every possible installation path
# and test using command

if command -v "nvim" &>/dev/null ; then
	alias vim="nvim"
fi

if command -v "surfraw" &>/dev/null ; then
       export SURFRAW_graphical=yes
       export SURFRAW_graphical_browser_open=open
       if [[ ${OSTYPE} == "darwin"* ]] ; then
	       export SURFRAW_browser="open -a Safari"
       fi
fi

if command -v "eza" &>/dev/null ; then
	alias ls="eza --icons=always --color=always"
	alias ll="eza -alh --git --icons=always --color=always"
	alias tree="eza --tree --icons=always --color=always"
fi

if command -v "bat" &>/dev/null ; then
	alias cat="bat -p"
fi

if command -v "direnv" &>/dev/null ; then
	eval "$(direnv hook zsh)"
fi

# Setup Podman if it's installed and running.
if [ -f "/run/user/$UID/podman/podman.sock" ] ; then
    export DOCKER_HOST=unix:///run/user/$UID/podman/podman.sock
fi

