## OpenWrt master (experimental)

### General Info
- Based of openwrt master

### Configuration
- OpenWRT master / Kernel 5.15
- NanoPi R4S : r8168 driver for R4S (realtek) instead of kernel r8169 + r8169 firmwares package

### Applications
- A useful set of applications from official OpenWrt package feed
- minidlna, banip, pbr, samba
- luci build with set of application packages
- firewall4 based (nftables)


### Changelog
- [2023-05-16] First release to be used on my device
- [2023-05-16] Add custom configuration for busybox history and default networking settings
- [2023-05-16] Added minidlna, banip, samba and pbr from master packages feed
- [2023-05-16] Added luci and luci applications for applicatons
- [2023-05-06] Switch to OpenWrt master