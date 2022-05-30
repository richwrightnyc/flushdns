# FLUSHDNS

## The macOS equivalent to ipconfig /flushdns on Windows

A simple network troubleshooting program for IT Pros.

### Installation and Usage

**flushdns requires root privelege** to clear dns cache and restart dns services

To use flushdns right out of the box, simply run the shell script located in the "src" directory.

`sudo ./flushdns/src/flushdns.sh`

Alternatively (better), run `./flushdns/install.sh` to add the flushdns compiled binary to your `/usr/local/bin` directory, so it can be called directly from the command line.

Run `./flushdns/install.sh`

### Uninstall

To uninstall flushdns, run the uninstall script `./flushdns/uninstall.sh`. This will remove flushdns from `/usr/local/bin` automatically.

Alternatively, manually remove the binary `rm /usr/local/bin/flushdns`
