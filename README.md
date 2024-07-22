# dotfiles

My dotfiles. This is a work in progress.

Where possible, files follow the [XDG Base Directory Specification](https://wiki.archlinux.org/title/XDG_Base_Directory), which prefers placing files in the `.config` and `.local` directories instead of directly in `$HOME`.

I use these dotfiles in four different environments:
 - `home`: Home PCs, running Fedora
 - `server`: Personal servers, running Debian stable
 - `work-client`: Work PCs, running Fedora
 - `work-devserver`: Work development environment, running CentOS

The current environment is available in the `$DANIEL15_ENV` shell variable if needed (set in `.zshrc`).

# Usage

This repository is managed using [chezmoi](https://www.chezmoi.io/). Install it as per their docs. For systems with no root access and no direct internet access (e.g. on-demand devservers at work), download the amd64 pre-built binary and SFTP it into ~/.local/bin.
