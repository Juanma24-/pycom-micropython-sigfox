#!/bin/sh

#LOPY shell make file

BOARD="LOPY"
BTYPE="release"
BAND="USE_BAND_868"
PORT="/dev/cu.usbmodemPy343431"

echo "Cleaning las project"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND clean
echo "Building Bootloader"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND TARGET=boot
echo "Building App"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND TARGET=App
echo "flashing"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND ESPPORT=$PORT flash
