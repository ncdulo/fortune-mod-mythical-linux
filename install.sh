#!/bin/bash
# Makes and copies normal and offensive fortunes and their data to /usr/share/fortune

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

# Copies normal and offensive fortunes and their data to /usr/share/fortune

echo "Copying normal fortunes to /usr/share/fortunes..."
sudo cp ./mythical_linux /usr/share/fortunes
echo "Copying normal fortune data to /usr/share/fortunes..."
sudo cp ./mythical_linux.dat /usr/share/fortunes
echo "Copying offensive fortunes to /usr/share/fortunes/off..."
sudo cp ./off/mythical_linux /usr/share/fortunes/off
echo "Copying offensive fortune data to /usr/share/fortunes/off..."
sudo cp ./off/mythical_linux.dat /usr/share/fortunes/off



echo "Allowing Fortune to use the fortunes by changing permissions..."

# Fixes permissions on the fortune files so anybody can use them

echo "Permission-fixing normal fortunes at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/mythical_linux
echo "Permission-fixing normal fortune data at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/mythical_linux.dat
echo "Permission-fixing offensive fortunes at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/off/mythical_linux
echo "Permission-fixing offensive fortune data at /usr/share/fortune..."
sudo chmod 777 /usr/share/fortune/off/mythical_linux.dat

# Same as last but does it to /usr/share/fortunes instead

echo "Permission-fixing normal fortunes at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/mythical_linux
echo "Permission-fixing normal fortune data at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/mythical_linux.dat
echo "Permission-fixing offensive fortunes at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/off/mythical_linux
echo "Permission-fixing offensive fortune data at /usr/share/fortunes..."
sudo chmod 777 /usr/share/fortunes/off/mythical_linux.dat

# We hopefully done

echo "Fortunes (hopefully) installed."
