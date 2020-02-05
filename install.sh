#!/bin/bash
dir="$(whereis fortune | awk -F\  '{ print $3 }')"
non() {
    echo "Running STRFile on normal fortunes..."
    strfile mythical_linux
    echo "Copying normal fortunes to $dir..."
    sudo cp mythical_linux{,.dat} "$dir"
}
off() {
    echo "Running STRFile on offensive fortunes..."
    strfile off/mythical_linux
    echo "Copying offensive fortunes to $dir/off..."
    sudo cp off/mythical_linux{,.dat} "$dir/off"
}
post() {
	echo "Permission-fixing fortunes at $dir..."
    sudo chmod 777 -R "$dir"
    echo "Fortunes installed." && exit 0
}
case $1 in
    h) echo "
n = install non-offensive
o = install offensive
no arguments = install both
"
       ;;
    n) non && post;;
    o) off && post;;
    *) non && off && post;;
esac
exit 1
