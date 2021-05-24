#!/bin/bash
#This Script finds all your connected Apollo BTC Standard Hashboards and starts each one with the settings below in a screen session. Please see the miner_start.sh file for additional directions. 

start_hashboards()
{
    while [ $1 ];
            do
            screen -dmS miner ./futurebit-miner -comport $1 -ao_mode 1 $settings
            sleep 1
            shift
    done
}

#find and start external hashboards


ports=$(ls /dev/ttyACM*)
start_hashboards $ports

echo "Started"
