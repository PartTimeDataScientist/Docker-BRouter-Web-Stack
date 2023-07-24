#!/usr/bin/bash
for lat in W20 W15 W10 W5 0 E5 E10 E15 E20 E25 E30 E35 E40 E45
do
    for lon in N30 N35 N40 N45 N50 N55 N60 N65 N70 N75 N80 N85
    do
        if [ -f "./segments/${lat}_${lon}.rd5" ]; then
            echo "File ${lat}_${lon}.rd5 already exists - skipping download..."
        else
            echo "Downloading https://bikerouter.de/segments/${lat}_${lon}.rd5..."
            wget "https://bikerouter.de/segments/${lat}_${lon}.rd5" -P ./segments
        fi
    done
done
