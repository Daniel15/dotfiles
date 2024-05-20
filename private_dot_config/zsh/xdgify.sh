# Configure various apps to use XDG directories

# Gtk
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

# wget
alias wget=wget --hsts-file="$XDG_DATA_HOME/wget-hsts"

# zsh
zstyle ':completion:*' cache-path "$XDG_CACHE_HOME/zsh/zcompcache"
HISTFILE="$XDG_STATE_HOME/zsh/history"
compinit -d "$XDG_CACHE_HOME/zsh/zcompdump-$ZSH_VERSION"
