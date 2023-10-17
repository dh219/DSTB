## David's ST Booster (DSTB)

#### A low-cost DIY 16MHz 68000 accelerator with 8MB fast AltRAM and optional ROM cacheing

Fitting into a small footprint, just 3mm wider than the 68000 socket into which this plugs, the board (\~$4) contains one XC95144XL-100 CPLD (\~$5), one 32Mbit TSSOP-II-54 SDRAM chip (~$5), two level-shifting buffers (\~$6), one 5 or 3.3V 66MHz oscillator in a 7x5mm package (\~$4) and a 3.3V LDO voltage regulator (\~$2) as the core components.

This provides all the interface between the ST and a 16MHz capable 68000. The 68000 will run at the oscillator frequency divided by four, so 16.5MHz in normal configuration.

The AltRAM runs at at full speed for a 16MHz processor, offering throughput of around 7.7MB/s compared to ST-RAM's 3.7MB/s.

Firmware source (ISE), board design files (KiCAD) and any source for support programs will be published at each release.

#### Cost & requirements

I anticipate a single board can be hand assembled for approximately 30USD. You may need to acquire a 16MHz capable DIP-64 68000 to pair with it if your old 8MHz chip cannot handle the faster clock.

#### Manual

At the moment, there is no manual. This will be written in due course.

There is a build video available at https://youtu.be/VHx3kat0Q6M

### Resistor Networks

All resistor networks are recommended, however if you have already carried out preventative maintenance on your ST board such that the bus resistor packs have been changed to 2k2 or lower, you may omit the resistor packs on the address and data bus (RN1-10).

Please note, RN11 is not a supplementary bus pull-up pack and is required for correct operation of the firmware.

#### Software

See https://github.com/dh219/DSTB-tools for the 'AltRAM' or 'AltROM' programs (NB. 'AltROM' hasn't been properly tested with later firmware builds & this board is not compatible with 'ExxosRAM.PRG').

EmuTOS automatically recognises and activate AltRAM.

---

*Copyright 2022 D Henderson, released under GPL2.0*
