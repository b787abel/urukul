[![QUARTIQ Matrix Chat](https://img.shields.io/matrix/quartiq:matrix.org)](https://matrix.to/#/#quartiq:matrix.org)

# Urukul CPLD code

[Urukul overview](https://github.com/sinara-hw/Urukul/wiki)

[Urukul Schematics/Layout](https://github.com/sinara-hw/Urukul/releases)

[NU-Servo](https://github.com/m-labs/nu-servo)

## Building

Needs [migen](https://github.com/m-labs/migen) and [Xilinx ISE](https://www.xilinx.com/products/design-tools/ise-design-suite.html). Assumes ISE is installed in ``/opt/Xilinx``.

```
make
```

Not so simple!! 

1. Start the nix develop environment (can be found in artiq manual (developing artiq) 
```
nix develop git+https://github.com/m-labs/artiq.git\?ref=release-7
```
2. Source the Xilinx ISE command line tools. Note that on this PC a symbolic link must be created as ISE is installed at /scratch/tools/Xilinx 
```
source /opt/Xilinx/14.7/ISE_DS/settings64.sh
```
3. make 

## Flashing

With Digilent [JTAG HS2](https://store.digilentinc.com/jtag-hs2-programming-cable/) cable:

  - download firmware to dongle. Manually (adjust USB bus as needed):
  ```
  /sbin/fxload -t fx2 -I /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xusb_xp2.hex -D /dev/bus/usb/001/*`cat /sys/bus/usb/devices/1-3/devnum`
  ```
  or automatically via the ``udev`` rule:
  ```
  SUBSYSTEM=="usb", ACTION="add", ATTR{idVendor}=="0403", ATTR{idProduct}=="6014", ATTR{manufacturer}=="Digilent", RUN+="/usr/bin/fxload -v -t fx2 -I /opt/Xilinx/14.7/ISE_DS/ISE/bin/lin64/xusb_xp2.hex -D $tempnode"
  ```

  - install [xc3sprog](http://xc3sprog.sourceforge.net/)

  - ``flash_xc3.sh jtaghs2``

  - look for ``Verify: Success``

# License

GPLv3+
