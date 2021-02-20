These are the config files for personal use.

## FSTAB
```bash
# Static information about the filesystems.
# See fstab(5) for details.

# <file system> 				<dir> 		          <type> 	        <options>		                <dump> <pass>
UUID=cbc33525-9b92-4d48-8fa0-5b159ebd2b5d   /     		      ext4   	defaults 	  	      0 1
UUID=BABA-7361	                            /     		      vfat   	defaults 	  	      0 2
UUID=72D240EDD240B6DF		            /externalDrive 	      ntfs-3g defaults,uid=1000 	0 1
```

## Kernel Parameters
> i915.enable_dpcd_backlight=1 loglevel=3 quiet
