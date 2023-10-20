# Zigbee Hand on Forming and Joining

## Setup

### Bootloader

In order for this example to run on the Silicon Labs EVK's it is required to first add the correct Bootloader.

-  For the "Wireless Pro Kit Mainboard (BRD4002A Rev A06) w/ EFR32xG24 (BRD4187c Rev A01)" use "Bootloader – SoC SPI Flash Storage (single image with slot size of 1024k)".
- For  the "•	Wireless Starter Kit Mainboard (BRD4001A Rev A01) w/ EFR32xG21 (BRD4180A Rev A01)" use "Bootloader – SoC Internal Storage (single image on 1MB device)"

### Base Application

The code base for this project is based on the SOC Zigbee Minimal Application which will create a project with the majority of the required software components and tools already integrated into the project.  This example project comes with a tool called Zigbee Cluster Configurator which seems to be the primary tools for initalizing the Zigbee aspects of the application.  In this tool there are settings to add Endpoints.  These endpoints have 5 settable parameters:

1. Endpoint: # designator for which endpoint this refrences
1. Profile ID: 2 byte hex value
1. Device: Device type (list of available devices)
1. Network: # Network this will be on
1. Version: Version # (???)

There is a ton of further customization in this tool but I have no idea what it does yet.

### Software Components for Light & Switch

There are slight differences of software components required for the Light & Switch applications.

| Components | Light | Switch |
|:------------:|:-------:|:--------:|
| Network Creator | Install | Uninstall |
| Network Creator Security | Install | Uninstall |
| Security Link Keys Library | Install | Uninstall |
| Pro Leaf Stack | Uninstall | Install |
| Pro Stack | Install | Uninstall |
| CLI: Command Line Interface | Install | Install |
| Install Code Library | Uninstall | Install |
| Update TC Link | Uninstall | Install |
| Network Steering | Uninstall | Install |



