#!/bin/bash
echo "Running STRFile on normal fortunes..."
strfile ./mythical_linux
echo "Running STRFile on offensive fortunes..."
strfile ./off/mythical_linux
echo "Copying normal fortunes to /usr/share/fortune..."
sudo cp ./mythical_linux /usr/share/fortune
echo "Copying normal fortune data to /usr/share/fortune..."
sudo cp ./mythical_linux.dat /usr/share/fortune
echo "Copying offensive fortunes to /usr/share/fortune/off..."
sudo cp ./off/mythical_linux /usr/share/fortune/off
echo "Copying offensive fortune data to /usr/share/fortune/off..."
sudo cp ./off/mythical_linux.dat /usr/share/fortune/off
echo "If you got non-existant errors at this point, keep the script running. You might have /usr/share/fortunes instead, this part of the script copies to there."
echo "Copying normal fortunes to /usr/share/fortunes..."
sudo cp ./mythical_linux /usr/share/fortunes
echo "Copying normal fortune data to /usr/share/fortunes..."
sudo cp ./mythical_linux.dat /usr/share/fortunes
echo "Copying offensive fortunes to /usr/share/fortunes/off..."
sudo cp ./off/mythical_linux /usr/share/fortunes/off
echo "Copying offensive fortune data to /usr/share/fortunes/off..."
sudo cp ./off/mythical_linux.dat /usr/share/fortunes/off
echo "Allowing Fortune to use the fortunes by changing permissions..."
echo "Permission-fixing normal fortunes at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/mythical_linux
echo "Permission-fixing normal fortune data at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/mythical_linux.dat
echo "Permission-fixing offensive fortunes at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/off/mythical_linux
echo "Permission-fixing offensive fortune data at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/off/mythical_linux.dat
echo "Permission-fixing normal fortunes at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/mythical_linux
echo "Permission-fixing normal fortune data at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/mythical_linux.dat
echo "Permission-fixing offensive fortunes at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/off/mythical_linux
echo "Permission-fixing offensive fortune data at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/off/mythical_linux.dat
echo "Fortunes (hopefully) installed."
