# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=  ____             _   _        _                        _ 
/ ___|  ___ _ __ | |_(_) ___  | | _____ _ __ _ __   ___| |
\___ \ / _ \ '_ \| __| |/ __| | |/ / _ \ '__| '_ \ / _ \ |
 ___) |  __/ |_) | |_| | (__  |   <  __/ |  | | | |  __/ |
|____/ \___| .__/ \__|_|\___| |_|\_\___|_|  |_| |_|\___|_|
           |_|                                            
         1.0 by Royal_Turd @ xda-developers
do.devicecheck=1
do.modules=0
do.cleanup=1
do.cleanuponabort=0
device.name1=rosy
supported.versions=8.1,9.0
supported.patchlevels=2018-01 -
'; } # end properties

# shell variables
block=auto;
is_slot_device=0;
ramdisk_compression=auto;


## AnyKernel methods (DO NOT CHANGE)
# import patching functions/variables - see for reference
. tools/ak3-core.sh;


## AnyKernel file attributes
# set permissions/ownership for included ramdisk files
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;


## AnyKernel install
dump_boot;

# begin ramdisk changes



# end ramdisk changes

write_boot;
## end install

