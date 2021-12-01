# Apollo-Miner-Binaries

These are the release binaries for the FutureBit Apollo BTC Standard units. Please read this getting started guide and download the release binaries in the release section for the system you are running your units on.

Detailed instructions on how to configure the start script for your pool and settings is inside script files (open the start_apollo.sh or start_apollo.bat file with a text editor). 


### Windows
* Apollo-Miner_msvc19.zip


### Linux
* 64 Bit Desktop: Apollo-Miner_x86_64.tar.gz
* ARM 64 (64Bit SBCs): Apollo-Miner_aarch64.tar.gz
* ARM 32 (All Raspberry Pies, 32Bit SBCs)

If your linux system complains about missing libraries, you need to update your system to the latest release

## Starting your hashboard

After you have downloaded the release binaries for your system, you will find start scripts inside the folder. You need to edit the "start_apollo" files with your pool/settings (instructions inside).

For windows simply double click the .bat file to start, and on linux open a terminal, cd into the binary folder and run with

```sh
$ sudo ./start_apollo.sh
```


 
