# USB-C-to-C Power Mod Flex PCB

<img src="images/pcb-close-up.jpeg" alt="Flex PCB and SMD resistors with a USB-C cable for scale" width="320" height="240">

Many devices have a USB-C connector to charge or power them. This is very convenient given the popularity of USB-C, its reversible cable design, and sturdy, compact design.

However, some devices will not draw power when using a USB-C-to-C cable connected to a spec-compliant charger, but will when using a USB-A-to-C cable. The USB-C specification requires upstream facing ports (UFPs), the port of the device receiving power, to connect pull-down resistors to the configuration channel (CC) pins. These missing pull-down resistors are a common reason why devices can draw power with A-to-C cables but not C-to-C ones.

Wouldn't it be great to be able to add these resistors and enable USB-C-to-C power? This mod does just that. It is a small flex PCB with pads for two 5.1kohm pull-down resistors between CC1 and CC2, respectively, and GND.

### Circuit
<img src="images/circuit.png" alt="Circuit schematic" width="200" height="200">

### PCB
<img src="images/pcb-preview.png" alt="PCB preview" width="468" height="159">

## Supported devices

This PCB can fit into a wide variety of devices whose **USB-C connectors soldered onto 12 pads**. (Note: these connectors are sometimes described as having "16+8 dummy pins". Four of the VBUS pins are wired to two VBUS pads and four of the GND pins are wired to two GND pads, which is why the USB-C port has 16 active pins but is soldered to only 12 pads.) The number of soldered pins varies between USB-C connectors; be sure to inspect the main PCB of your device and ensure the USB-C connector has 12 soldered pins. If your device's USB-C connector has a different number of pins or has through-hole pins, this PCB will not work; however, the concept of connecting two 5.1kohm resistors between the CC pins and ground would work if you were to alter this mod.

Also, the device's PCB needs to have room behind the USB-C connectors to install the mod. The mod is very small but does require a few millimeters of clearance behind the USB-C connector.

## Flex PCBs

Flex PCBs are more expensive than rigid PCBs but are much thinner, making this mod less obtrusive and easier to retrofit into more devices. The PCB also needs to be thin in order to solder its castellations to the CC and GND pads of the main PCB.

## Required equipment and skills

### Parts

* 1x flex PCB
  * [OSH Park](https://oshpark.com/) is a great option worldwide. You can order this PCB from them [here](https://oshpark.com/shared_projects/3YgTXJvQ). Make sure to select the "Flex" option during checkout!
* 2x 5.1kΩ 0402 resistors
  * Order extras as they are difficult to find if lost on the floor
  * Preferably ±10% or better tolerance
  * [Panasonic ERJ-2GEJ512X](https://www.digikey.com/en/products/detail/ERJ-2GEJ512X/P5.1KJCT-ND/147043)

<img src="images/osh-park-pcbs.jpeg" alt="Flex PCBs from OSH Park" width="320" height="240">

### Tools

* A multimeter that can measure continuity, resistance, and voltage
* A fine-tipped soldering iron, solder, flux, and solder braid
* Q-tips and 91-99% isopropyl alcohol or electrical cleaner
* Precision tweezers

### Skills

You will need to solder two SMD resistors to the flex PCB and the flex PCB to your device's main PCB. A steady hand is necessary and soldering experience is highly recommended. USB connectors are subject to stress and making the sub-millimeter solder joints strong will help keep your mod working for a long time.

Knowledge of electronic circuits and how to use a multimeter is also recommended, particularly if you need to debug an issue.

## Installation

The goal is to add one resistor between pad A5 (CC1) and GND and one resistor between pad B5 (CC2) and GND. First use a multimeter to test for continuity and measure resistance between CC1 and GND to ensure the circuit is open. Do the same with CC2 and GND. You may find it helpful to refer to [a diagram](https://gct.co/files/drawings/usb4105.pdf) of the USB-C connector to identify the pads. If the circuit is closed, do not install this mod; the point of this mod is to install missing pull-down resistors.

Lightly tin the pads on the underside of the flex PCB. This will make it easier to establish a good electrical connection with the USB-C connector. Wick away excess solder with your solder braid to prevent it from bridging the connector's pads during installation.

<img src="images/tinned-pads.jpeg" alt="Tinned pads on the PCB's underside" width="320" height="240">

Solder the two SMD resistors to the flex PCB. Use tweezers, patience, and a nicely tinned soldering iron. Measure the resistance between the flex PCB's pads to ensure it reads 5.1kΩ between each CC pad and its neighboring GND pad. Clean away the flux with isopropyl alcohol and Q-tips.

<img src="images/soldered-resistors.jpeg" alt="Pull-down resistors soldered on" width="320" height="240">

Align the flex PCB with the pins along the back of the USB-C connector. The flex PCB's pads should overlap slightly with the USB-C connector's pads and line up with the two GND pads, CC1, and CC2.

Solder the flex PCB to the USB-C connector. Start by soldering one pad down to hold it in place and then solder the rest of the pads. Once the pads are soldered down, it may help to revisit each of them: carefully press down with tweezers, gently reflow each pad for a few seconds, and hold your tweezers in place for a moment after lifting your iron to establish a strong solder joint. The goal is to create a good electrical connection between the flex PCB's pads and the USB-C connector's pads.

<img src="images/mod-installed.jpeg" alt="Flex PCB mod installed over the USB-C connector" width="320" height="240">

Measure the resistance between the CC pins of the USB-C connector and GND. It should read 5.1kΩ for each pin. As a sanity check, the resistance between the two CC pins should be 10.2kΩ.

Check for short circuits between each of the USB-C connector's neighboring pins. Ensure none of the pins are bridged, including underneath the flex PCB. You must clean up solder bridges before powering your device.

Use isopropyl alcohol to leave your PCB clean before reassembling your device.

Plug in a USB-C-to-C cable. If all has gone well, your device should receive power. There should be a 5V potential between VBUS and GND. (Do not attempt to measure the current across VBUS and GND in parallel with a multimeter or you will likely short circuit and damage your device.)

Gently wiggle the connector to verify the connection is reliable. An unreliable connection may indicate weak solder joints that need to be reflowed. Unplug the USB-C cable and flip it over to check that your device receives power in both orientations. 

<img src="images/monstargear-alu-xo-v3.jpeg" alt="Keyboard powered with USB-C-to-C cable" width="480" height="360">

## Help and support

You can use this mod however you'd like under the terms of the MIT License.

Speaking plainly, other forums or chats on the internet are better places to look for help than this repo.

You are responsible for any damage to your devices that might come from this mod or trying to install this mod.
