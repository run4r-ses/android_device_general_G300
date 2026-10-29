# TWRP Device Tree for General Mobile GM 10 (`G300`)

## Building 

1. Initialize `twrp-12.1` minimal manifest and clone device tree.

2. Build the boot image:
   ```bash
   source build/envsetup.sh
   export ALLOW_MISSING_DEPENDENCIES=true
   lunch twrp_G300-eng
   mka bootimage
   ```

## Flashing

1. Use `fastboot` to boot into TWRP image:
   ```bash
   fastboot flash boot boot.img
   fastboot reboot recovery
   ```

2. Go to "Advanced", then "Flash current TWRP". This will patch your boot image


You will need to do this every time you update your boot image. Ideally, you should boot into TWRP to update the boot image so you can reflash TWRP right after.
