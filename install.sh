#!/bin/bash
# Makes and copies normal and offensive fortunes and their data to /usr/share/fortune
echo "Running STRFile on normal fortunes..."
strfile mythical_linux
echo "Running STRFile on offensive fortunes..."
strfile off/mythical_linux
dir="$(whereis fortune | awk -F\  '{ print $3 }')"
echo "Copying normal fortunes to $dir..."
sudo cp mythical_linux{,.dat} "$dir"
echo "Copying offensive fortunes to $dir/off..."
sudo cp off/mythical_linux{,.dat} "$dir/off"
echo "Permission-fixing fortunes at $dir..."
sudo chmod 777 -R "$dir"
echo "Fortunes installed."
