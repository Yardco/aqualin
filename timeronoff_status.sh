# Written by Roy Oltmans
# 2020-04-14

# Reverse engineering of Aqualin BLE Selenoid Valve
# Service identified for maunual programming:
# uuid: 0000fceb-0000-1000-8000-00805f9b34fb
# handle: 0x0073

# read bytes/char string see the breakup

# value [7b03][00|01]00[hex:MM]
# Examples are:
# 7b03010005 on for 5min
# 7b0301001e on for 30min
# 7b0301003c on for 60min
# 7b03010000 off

gatttool -b [01:02:03:04:05:06 put a valid mac address of the aqualin device here without the brackets] --char-read -a 0x0073

