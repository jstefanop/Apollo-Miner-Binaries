#!/bin/bash

# This is an example start script file for running the FutureBit Apollo BTC via USB on a linux computer or SBC. Please read this guide and edit the last line in this file to run your Apollo.
# Please note that each instance of apollo-miner controls ONE standard unit.

# If you have multiple units connected, you can run our miner_start_all script which will automaticly detect and start all connected hashboards. Please note all the miners will run in a seperate screen session,
# so if you want to view their stats you have to bring up each screen session via "sudo screen -dr"

# The Apollo II has an advanced auto-tuner, and new built in power mode setting that automatically sets the best power and frequency setting for your device. Setting the
# power and frequency is no longer recommended, as the autotuner will set optimal settings at the individual asic level.
#
# Format for running miner:
#
#      ./apollo-miner -host <pool address> -port <pool port> -user <pool username/wallet> -pswd <pool password> -comport <board port> -powermode <mode> -ao_mode 1 -ao_mode 1
#
# Fields:
#
#      pool address - the host name of the pool stratum or it's IP address. E.g. stratum.slushpool.com
#      pool port - the port of the pool's stratum to connect to.  E.g. 3333
#      pool username/wallet - For most pools, this is the wallet address you want to mine to.  Some pools require a username
#      pool password - For most pools this can be empty.  For pools using usernames, you may need to provide a password as configured on the pool.
#      board port - the name of the serial port. In linux it will show up as /dev/ttyACM*, with * denoting a number starting at 0 for each device you have plugged in (ex /dev/ttyACM0, /dev/ttyACM1, etc)
#      board mode - this controls the three preset modes, which are eco, balanced, and turbo
#
# Tuning Guide:
#
#	The three auto modes should be more than enough for most use cases, and it is not recommended to run custom power mode unless you are an expert user and know what you are doing. 
#      It is normal for your hashboard to have	up to 5% error rate, this is usually due to one bad chip producing lots of errors and won't affect your overall hashrate.
#	The easiest way to tune your board is to simply increase or decrease the power %. If you see over 5% errors, simply start incrementing the -brd_ocp parameter 1-2 units at a time
#      If you are seeing very low error rate (under 1%), you can start decreasing the power parameter to increase efficiency 
#	The Apollo II no longer uses set frequencies, and is autotuned at the chip level automatically which uses internal hardware error correction to set the frequency
#	To set custom power modes see the below settings eco/bal/turbo is set too and adjust the power value accordingly. The -powermode config flag needs to be set for custom power to apply
#
# Preset Values:
#	ECO:        -brd_ocp 54  -powermode config
#	BALANCED:   -brd_ocp 72  -powermode config
#	TURBO:      -brd_ocp 90  -powermode config
#
#      -----WARNING------
#
#      The internal Apollo II power supply has a max output of 450 watts. It is passively cooled by the fan airflow, and is not suggested to go past 95% power. Proceed at your own risk. 
#
#      -----WARNING------
#
#
# Example steps:
# 1. If you prefer a different pool, change the pool server address/port
#
# 2. Replace the example username with your own username/wallet(!).
#
# 3. Change serial port number to the number for the hashboard you want to run (you can list all of them with "ls /dev/ttyACM*"
#
# 4. Set board power and frequency values using one of the preset values above
#
# 4. Save the file and double click it to start the miner


./apollo-miner-v2 -host us-east.stratum.slushpool.com -port 3333 -user jstefanop.x -pswd x -comport /dev/ttyACM0 -powermode eco -ao_mode 1


