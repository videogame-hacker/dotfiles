# dotfiles

These are my personal dotfiles, running on an Arch Linux desktop and multiple Arch Linux laptops.

To manage these, I use [GNU Stow](https://www.gnu.org/software/stow/).

## Installation

```
$ stow core # Core must be installed to install anything else!
$
$ # Install a set of configurations.
$ stow zsh
$ # Uninstall the same set of configurations.
$ stow -D zsh
$
$ # Install a different set.
$ stow rofi
$ stow termite
$ # et cetera.
```
