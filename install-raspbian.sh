CARD_READER=/dev/disk2

# Download Raspbian
wget http://downloads.raspberrypi.org/raspbian_latest -O raspbian.zip
unzip -p raspbian.zip > raspbian.img

# Install Raspbian
diskutil unmountDisk $CARD_READER
sudo dd bs=1m if=raspbian.img of=$CARD_READER

# Clean up
rm raspbian.img raspbian.zip
