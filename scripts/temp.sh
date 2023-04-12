# This is a dumb little script for checking the CPU temperature on linux without 3rd part tools. 
# This has gotten used more times than I care to admit as sometimes I like to push my hardware beyond its capabilities.

paste <(cat /sys/class/thermal/thermal_zone*/type) <(cat /sys/class/thermal/thermal_zone*/temp) | column -s $'\t' -t | sed 's/\(.\)..$/.\1°C/'
