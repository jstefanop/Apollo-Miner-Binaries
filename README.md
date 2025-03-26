# Apollo-Miner-Binaries

These are the release binaries for the FutureBit Apollo BTC/II Standard units. Please read this getting started guide and download the release binaries in the release section.

Detailed instructions on how to configure the start script for your pool and settings is inside script files (open the start_apollo.sh or start_apollo.bat file with a text editor). 

Once you download the release zip, decompress it and go into the folder for your respective Unit (Apollo BTC for Gen 1 units, and Apollo II for gen 2)

Inside choose the folder based on the system you are running the Apollo on:

### Windows (AMD/Intel Systems)
* win-x86_64


### Linux
* 64 Bit Desktop (AMD/Intel): linux-x86_64
* ARM 64 (Raspberry Pi 5/4): linux-aarch64


If your linux system complains about missing libraries, you need to update your system to the latest release

## Starting your hashboard

After you have downloaded the release binaries for your system, you will find start scripts inside the folder. You need to edit the "start_apollo" files with your pool/settings (instructions inside).

For windows simply double click the .bat file to start, and on linux open a terminal, cd into the binary folder and run with

```sh
$ sudo ./start_apollo.sh
```


 
