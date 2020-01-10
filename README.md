fortune-mod-mythical-linux
--------------------------
A collection of various Phate-isms and Tredixions.

Installation
------------



# Automatic

Run `install.sh`.

------------

# Manual

The `strfile` program is included with `fortune_mod` and is used to create
the `*.dat` files used by fortune. After creating those file, you may copy
them to your `/usr/share/fortune` directory for a system-wide install.

Potentially offensive fortunes are located within the `off` directory.
Install those to the `/usr/share/fortune/off` directory and select them
with the `-o` option to fortune.

#### Example

    strfile mythical_linux
    strfile off/mythical_linux off/mythical_linux.dat
    cp mythical_linux{,.dat} /usr/share/fortune
    cp off/mythical_linux{,.dat} /usr/share/fortune/off
    

Acknowledgments
---------------
These fortunes were collected from the Mythical Linux Discord server.
Thanks goes to the original authors, without whom, there would be no
fortunes.
