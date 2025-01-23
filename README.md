# Dotfiles for ASUS ROG Zephyrus Duo 15 SE GX551QS

Welcome to my dotfiles repository! This repository contains the configuration files and scripts I use to optimize and customize my setup on the **ASUS ROG Zephyrus Duo 15 SE GX551QS**, running Arch Linux.

Warning! This is a work in progress for a machine I put together not long ago, there's a lot of templating in this configuration since I am learning as I go.

## Table of Contents
- [System Overview](#system-overview)
- [Key Features](#key-features)
- [Installation](#installation)
- [Device-Specific Configurations](#device-specific-configurations)
  - [Dual Screen Setup](#dual-screen-setup)
  - [Touchscreen Configuration](#touchscreen-configuration)
  - [Audio Configuration](#audio-configuration)
- [Acknowledgments](#acknowledgments)

## System Overview
- **Device:** ASUS ROG Zephyrus Duo 15 SE GX551QS
- **OS:** Arch Linux
- **Display Server:** Wayland (Hyprland)
- **Audio:** PipeWire with WirePlumber
- **Input:** libinput

## Key Features
- Hyprland setup with tweaks for the second (touch) screen.
- It's just dotfiles, steal em!

## Installation
To get started with these dotfiles:

1. Clone the repository:
   ```bash
   git clone git@github.com:dochollidayxx/dotfiles-archnemesis.git
   cd dotfiles-archnemesis
   ```
2. Backup what you've got.
3. Use what you like, I'm not writing an install script today at least.

## Device-Specific Configurations

### Dual Screen Setup
This machine features a dual-screen configuration:
1. **Primary Display:** 1920x1080 (top screen).
2. **Touchscreen Display:** 1920x550 (secondary screen, below the primary screen).

To configure the touchscreen accurately under Wayland:

- Ensure you have a `udev` rule that initializes correctly on boot to adjust the touchscreen:
  ```
  1 ENV{DEVPATH}=="/devices/platform/AMDI0010:00/i2c-0/i2c-ELAN9009:00/0018:04F3:2A5A.0004/input/input26/event12",ENV{WL_OUTPUT}="DP-2",ENV{LIBINPUT_CALIBRATION_MATRIX}="1 0 0 0 0.3374 -0.6626 0      0 1"  ```
  ```
### Touchscreen Configuration
See hyprland.conf (TODO: seperate source files per section)

### Audio Configuration
The **ALC289** audio device can exhibit volume issues (e.g., muffling certain frequencies, volume down behaving weird). To resolve this:
- Install `alsa-tools`
- With hdajackretask:
    - Choose Realtek ALC289 in codec menu,
    - Check "Show unconnected pins",
    - Enable Pin ID Ox17 and select "Internal Speaker (LFE)",
    - Enable Pin ID 0x1e ans select "Internal Speaker",
    - Click "Apply Now",
    - Click "Install boot override".

## Acknowledgments
Thanks to the Arch Linux and Hyprland communities for their documentation and support!

