#!/bin/sh
# JUAN MANUEL GALÁN SERRANO
# UPC/ALSTOM 2018
# Shell file to change esp32 internal parameters using as base Wi-Fi scan process.

# ESP32 PATH INSIDE PYCOM-MICROPYTHON PROJECT
ESP32_PATH=~/.dropbox-alt/DropboxALSTOM/Dropbox/Dropbox/Lora/Firmware/pycom-micropython-sigfox/esp32
#MENUCONFIG
make menuconfig
echo "Finish ESP32 configuration"
#MAKE ALL
echo "Beginning libraries build"
make all

#COPY COMMANDS FROM ESP-IDF TO PYCOM-MICROPYTHON PROJECT
echo "Copying libraries to Pycom-MicroPython project"

cp -v ./build/include/sdkconfig.h $ESP32_PATH

cp -v ./build/bootloader/bootloader_support/libbootloader_support.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/log/liblog.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/micro-ecc/libmicro-ecc.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/soc/libsoc.a $ESP32_PATH/bootloader/lib/
cp -v ./build/bootloader/spi_flash/libspi_flash.a $ESP32_PATH/bootloader/lib/

cp -v ./build/bootloader_support/libbootloader_support.a $ESP32_PATH/lib/
cp -v ./build/bt/libbt.a $ESP32_PATH/lib/
cp -v ./build/cxx/libcxx.a $ESP32_PATH/lib/
cp -v ./build/driver/libdriver.a $ESP32_PATH/lib/
cp -v ./build/esp32/libesp32.a $ESP32_PATH/lib/
cp -v ./build/expat/libexpat.a $ESP32_PATH/lib/
cp -v ./build/freertos/libfreertos.a $ESP32_PATH/lib/
cp -v ./build/jsmn/libjsmn.a $ESP32_PATH/lib/
cp -v ./build/json/libjson.a $ESP32_PATH/lib/
cp -v ./build/log/liblog.a $ESP32_PATH/lib/
cp -v ./build/lwip/liblwip.a $ESP32_PATH/lib/
cp -v ./build/mbedtls/libmbedtls.a $ESP32_PATH/lib/
cp -v ./build/micro-ecc/libmicro-ecc.a $ESP32_PATH/lib/
cp -v ./build/newlib/libnewlib.a $ESP32_PATH/lib/
cp -v ./build/nghttp/libnghttp.a $ESP32_PATH/lib/
cp -v ./build/nvs_flash/libnvs_flash.a $ESP32_PATH/lib/
cp -v ./build/openssl/libopenssl.a $ESP32_PATH/lib/
cp -v ./build/sdmmc/libsdmmc.a $ESP32_PATH/lib/
cp -v ./build/soc/libsoc.a $ESP32_PATH/lib/
cp -v ./build/spi_flash/libspi_flash.a $ESP32_PATH/lib/
cp -v ./build/tcpip_adapter/libtcpip_adapter.a $ESP32_PATH/lib/
cp -v ./build/vfs/libvfs.a $ESP32_PATH/lib/
cp -v ./build/wpa_supplicant/libwpa_supplicant.a $ESP32_PATH/lib/
cp -v ./build/xtensa-debug-module/libxtensa-debug-module.a $ESP32_PATH/lib/
cp -v ./build/esp_adc_cal/libesp_adc_cal.a $ESP32_PATH/lib/
cp -v ./build/heap/libheap.a $ESP32_PATH/lib/
cp -v ./build/pthread/libpthread.a $ESP32_PATH/lib/
