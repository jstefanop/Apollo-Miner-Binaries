#!/bin/bash
#stops all running hashboards

reset_hashboards()
{
    while [ $1 ];
            do
            python -c 'import termios; termios.tcsendbreak(3, 0)' 3>$1
            sleep .5
            shift
    done
}

#quit all mining proccesses
for scr in $(screen -ls | awk '{print $1}'); do screen -S $scr -X quit; done


ports=$(ls /dev/ttyACM*)
reset_hashboards $ports

echo "Stopped"
