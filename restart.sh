# This script restarts the gpsd service
sudo killall gpsd
sudo gpsd /dev/ttyUSB0 -F /var/run/gpsd.sock