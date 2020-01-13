#!/bin/bash
# Makes and copies normal and offensive fortunes and their data to /usr/share/fortune
echo "Running STRFile on normal fortunes..."
strfile ./mythical_linux
echo "Running STRFile on offensive fortunes..."
strfile ./off/mythical_linux
if test -d /usr/share/fortune; then
    echo "Copying normal fortunes to /usr/share/fortune..."
    sudo cp ./mythical_linux /usr/share/fortune
    echo "Copying normal fortune data to /usr/share/fortune..."
    sudo cp ./mythical_linux.dat /usr/share/fortune
    echo "Copying offensive fortunes to /usr/share/fortune/off..."
    sudo cp ./off/mythical_linux /usr/share/fortune/off
    echo "Copying offensive fortune data to /usr/share/fortune/off..."
    sudo cp ./off/mythical_linux.dat /usr/share/fortune/off
    echo "Permission-fixing fortunes at /usr/share/fortune..."
    sudo chmod 777 -R /usr/share/fortune
elif test -d /usr/share/fortunes; then
    echo "Copying normal fortunes to /usr/share/fortunes..."
    sudo cp ./mythical_linux /usr/share/fortunes
    echo "Copying normal fortune data to /usr/share/fortunes..."
    sudo cp ./mythical_linux.dat /usr/share/fortunes
    echo "Copying offensive fortunes to /usr/share/fortunes/off..."
    sudo cp ./off/mythical_linux /usr/share/fortunes/off
    echo "Copying offensive fortune data to /usr/share/fortunes/off..."
    sudo cp ./off/mythical_linux.dat /usr/share/fortunes/off
    echo "Permission-fixing fortunes at /usr/share/fortunes..."
    sudo chmod 777 -R /usr/share/fortunes
fi
echo "Fortunes installed."
