fortune-mod-mythical-linux
--------------------------
A collection of various Phate-isms and Tredixions.

# Installation
------------
Note: The package name for `fortune` is different on a lot of systems. 
Yours could be `fortune`, mine could be `fortune_mod`.
When this guide refers to `fortune_mod`, replace that with your distro's
fortune package.

Automatic
------------
Run `install.sh`.
Note: The script assumes two things:

You're in the directory that the files are in. 
If you aren't running `./install.sh`, you're doing it wrong.

You have permissions to use `sudo`.

Manual
------------
The `strfile` program is included with `fortune_mod` and is used to create
the `*.dat` files used by fortune. After creating those files, you may copy
them to your `/usr/share/fortune` directory for a system-wide install.
If `/usr/share/fortune` doesn't exist, you have either not installed `fortune_mod`
or your fortunes are stored in `/usr/share/fortunes`. Check both
`/usr/share/fortune` and `/usr/share/fortunes`.

Potentially offensive fortunes are located within the `off` directory.
Install those to the `/usr/share/fortune/off` directory and select them
with the `-o` option to fortune. Remember that your version of `fortune` could
store the fortunes at `/usr/share/fortunes` instead!

#### Example

    strfile mythical_linux
    strfile off/mythical_linux off/mythical_linux.dat
    cp mythical_linux{,.dat} /usr/share/fortune
    cp off/mythical_linux{,.dat} /usr/share/fortune/off
    
Usage
-----
With the data files installed into your system fortune directory, they may be selected as follows

    # Non-offensive
    fortune mythical_linux
    # Offensive
    fortune off/mythical_linux
    # A little of both
    fortune mythical_linux off/mythical_linux
    
Fortune supports many other options, such as the ability to specify the chance to display a fortune from each specified file. Check the fortune manpage for more information on specific arguments.

If the data files are not to be installed system-wide, they may be called as above as long as you are calling fortune from within the directory where the files exist.

Acknowledgments
---------------
These fortunes were collected from the Mythical Linux Discord server.
Thanks goes to the original authors, without whom, there would be no
fortunes.
