Pacman for Homebrew
###################

This is an unofficial _`Pacman`_ tap for _`homebrew`_.
Only the x86_64 architecture is supported at this time.

The primary purpose is to be able to run the "dylan" tool in Open Dylan.


Initial setup
=============
If you don't have homebrew, install it from their _`homepage`_.

Then, add this tap::

	brew tap tj800x/pacman


Installing
==========
Once the tap is setup, to install Pacman::

	brew install --build-from-source tj800x/pacman/pacman@6.0.1


Notes and Credit
================
This formula is based on kladd's work at https://github.com/kladd/pacman-osx.  Thanks!
