#!/bin/bash
if [ "`which yum`" != "" ]; then
	echo "Installing with yum..."
	sudo yum install pyserial wxpython pyglet
elif [ "`which apt-get`" != "" ]; then
	echo "Installing with apt-get..."
	sudo apt-get install python-serial python-wxgtk2.8 python-pyglet
else
	echo "I don't know how to install packages without yum or apt-get. Please check the README and install the dependencies."
fi;
if [ "`which git`" != "" ]; then
	echo "Cloning a fresh version of Slic3r..."
	./slic3r-clone.sh
else
	echo "You don't apppear to have git installed; please download Slic3r (http://slic3r.org) and copy it under ./Slic3r."
fi;
