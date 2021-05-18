# Low-Cost Portable Optical Density Meter

This repository contains all the information necessary to build CZ
Biohub's portable, low cost Optical Density (OD) Meter.

Measuring OD is a very common technique in biological laboratories to determine
the concentration of a substance in solution or of bacteria (or other particles)
in suspension. Here we present the detailed build instructions of a very simple
OD meter that costs only US$60, and can measure OD values from ~0.05 to 2.0.


## Getting Started

The full construction, setup and operating instructions are in the
![complete guide file](Low-Cost_Optical_Density_Meter.pdf)
(file "Low-Cost_Optical_Density_Meter.pdf") and at
https://www.biorxiv.org/content/10.1101/2021.05.14.444207v1

The STL files needed to 3D print the parts needed for the build are in the
"3D Printed Parts" folder.

This guide is also available on bioRxiv:


## Super-Quick Operating Instructions

*Important:* Please let the OD meter warm up for about 20 minutes before
starting any measurements.

The OD Meter has four different states, as seen below:

![OD State Machine](OD_StateMachine.png)

**Raw Mode**

The system always starts up in raw mode, in which raw intensities are
displayed. This mode can be used to gauge if the Arduino has warmed up. The raw
intensities should stabilize as it warms up. Press the button once to move to
dark ref mode.

**Dark Ref Mode**

In dark ref mode, raw intensities are displayed with the label 'Dark intensity'.
In this mode, place the dark cuvette in the cuvette holder, and press the button
once to record the dark value.

**Blank Ref Mode**

In blank ref mode, raw intensities are displayed with the label 'Media
intensity'. In this mode, place the blank reference (which can be media for
bacteria, or clean water for water-based samples) in the cuvette holder, and
press the button once to record the blank value. Collecting these dark and blank
references is necessary for entering OD mode.

**OD Mode**

In OD mode, both the measured OD and the raw value are displayed on screen. If
blank and dark reference values need to be re-recorded, press down on the button
until the prompt for inserting the dark reference is displayed on the screen.
