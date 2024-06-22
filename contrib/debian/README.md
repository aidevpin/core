
Debian
====================
This directory contains files used to package ultronaid/ultronai-qt
for Debian-based Linux systems. If you compile ultronaid/ultronai-qt yourself, there are some useful files here.

## ultronai: URI support ##


ultronai-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install ultronai-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ultronai-qt binary to `/usr/bin`
and the `../../share/pixmaps/ultronai128.png` to `/usr/share/pixmaps`

ultronai-qt.protocol (KDE)

