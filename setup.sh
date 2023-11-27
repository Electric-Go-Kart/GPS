# Please ensure the breakout board is connected to the Raspberry Pi in the proper form by referring to the readme
# This script will install the necessary dependencies for the breakout board to work

# if /dev/ttyUSB0 exists, then the breakout board is connected
if [ -e /dev/ttyUSB0 ]; then 
    echo "Breakout board is connected"
else
    echo "Breakout board is not connected"
    exit 1
fi

sudo apt-get install gpsd gpsd-clients python3-gps

# if /etc/default/gpsd exists, then the gpsd package is installed
if [ -e /etc/default/gpsd ]; then 
    echo "gpsd package is installed"
else
    echo "gpsd package is not installed"
    exit 1
fi

sudo gpsd /dev/ttyUSB0 -F /var/run/gpsd.sock