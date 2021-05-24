#!/bin/bash

# This is an example start script file for running the FutureBit Apollo BTC via USB on a linux computer or SBC. Please read this guide and edit the last line in this file to run your Apollo.
# Please note that each instance of apollo-miner controls ONE standard unit.

# If you have multiple units connected, you can run our miner_start_all script which will automaticly detect and start all connected hashboards. Please note all the miners will run in a seperate screen session,
# so if you want to view their stats you have to bring up each screen session via "sudo screen -dr"

# Before starting, make sure you have BOTH 6 Pin power cables plugged into the back of your Apollo-BTC, running on one could overheat the port and cause a fire
#
# Format for running miner:
#
#      ./apollo-miner -host <pool address> -port <pool port> -user <pool username/wallet> -pswd <pool password> -comport <board port> -brd_ocp <board power>  -osc <frequency> -ao_mode 1
#
# Fields:
#
#      pool address - the host name of the pool stratum or it's IP address. E.g. stratum.slushpool.com
#      pool port - the port of the pool's stratum to connect to.  E.g. 3333
#      pool username/wallet - For most pools, this is the wallet address you want to mine to.  Some pools require a username
#      pool password - For most pools this can be empty.  For pools using usernames, you may need to provide a password as configured on the pool.
#      board port - the name of the serial port. In linux it will show up as /dev/ttyACM*, with * denoting a number starting at 0 for each device you have plugged in (ex /dev/ttyACM0, /dev/ttyACM1, etc)
#      board power - this controls power/voltage for the board in %. It ranges from 30-95. See presets and tuning guide below
#	   board frequency - this controls the hashboard's frequency. It ranges from 30-60
#
#      -----WARNING------
#
#      If you are using the FutureBit APU-200 PSU that comes with your unit DO NOT SET power past 75%. The PSU is limited to 200 watts, and going beyond this will trip or overheat your power supply
#	ONLY set power past 75% if you are using your own PSU that is capable of at least 300 watts per unit, and BOTH PCIE 6 Pin power plugs are plugged into your unit
#      FutureBit is NOT responsible for damage, nor will warranty devices damaged from running past 75% power. Proceed at your own risk.
#
#      -----WARNING------
#
#
# Preset Values:
#	ECO:        -brd_ocp 48  -osc 30
#	BALANCED:   -brd_ocp 60  -osc 40
#	TURBO:      -brd_ocp 75  -osc 50
#
#
# Tuning Guide:
#
#	The above three modes should be more than enough for most use cases, and it is not recommended to edit these unless you are an expert user and know what you are doing.
#      It is normal for your hashboard to have	up to 5% error rate, this is usually due to one bad chip producing lots of errors and won't affect your overall hashrate.
#	The easiest way to tune your board is to simply increase or decrease the power %. If you see over 5% errors, simply start incrementing the -brd_ocp parameter 1-2 units at a time
#      If you are seeing very low error rate (under 1%), you can start decreasing the power parameter to increase efficiency
#	The software already has per-chip auto-tuning built in, so you should not need to touch the -osc frequency parameter, but you can play with this as well to determine the sweet spot for your board
#	As mentioned above, the max power for standard unit with the included PSU is 75% (200 watts), do not go past this unless you have
#
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


./apollo-miner -host us-east.stratum.slushpool.com -port 3333 -user jstefanop.x -pswd x -comport /dev/ttyAMC0 -brd_ocp 48  -osc 30 -ao_mode 1


