#!/bin/sh

#LOPY shell make file

BOARD="LOPY4"
BTYPE="release"
BAND="USE_BAND_868"
PORT="/dev/cu.usbmodemPy343431"

echo "Cleaning project"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND clean
echo "Building Bootloader"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND TARGET=boot
echo "Building App"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND TARGET=App
echo "flashing"
make BOARD=$BOARD BTYPE=$BTYPE LORA_BAND=$BAND ESPPORT=$PORT flash
