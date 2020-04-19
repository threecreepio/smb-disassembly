# SMB Disassembly CC65

Converts doppelganger's SMB disassembly to work with the CC65 compiler suite

## Setup

Make sure you have Make and CC65 https://cc65.github.io/ installed.

On Windows it's easiest to do this using the Windows Subsystem for Linux, then running `sudo apt install cc65 make`

## Building

To build the project, place a file called "Super Mario Bros. (World).nes" file in this folder, the CHR data is extracted from this file.

After that, run:

```
make clean ; optional
make
```

And if all went well, you should have a "main.nes" file that you can run in any NES emulator, and a "main.nes.dbg" file that you load in the Mesen debugger (using the 'import labels' option, then right click the code view and select 'switch to source view') to get comments and symbols in the built-in debugging tool.
