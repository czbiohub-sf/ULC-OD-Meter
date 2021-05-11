# ULC OD Meter

 This is the repository containing schematics and code for CZ Biohub's ULC OD Meter.


## Getting Started
The latest Arduino IDE can be downloaded [on Arduino's website](https://www.arduino.cc/en/software). Open `ODMeter_Program.ino` in the IDE. To upload code, select 'Board' as Arduino Nano or Arduino Micro. Select the port associated with the Arduino on the OD Meter to upload.

*Important:* Please let the OD meter warm up for about 20 minutes before starting any measurements.

## Operating the OD Meter
The OD Meter has four different states, as seen below:


![OD State Machine](OD_StateMachine.png)

**Raw Mode**

The system initially starts up in raw mode, in which raw intensities are displayed. This mode can be used to gauge if the Arduino has warmed up. The raw intensities should stabilize as it warms up. Press the button once to move to dark ref mode.

**Dark Ref Mode**

In dark ref mode, raw intensities are displayed with the label 'Dark intensity'. In this mode, place the dark cuvette in the cuvette holder, and press the button once to record the dark value.

**Blank Ref Mode**

In blank ref mode, raw intensities are displayed with the label 'Media intensity'. In this mode, place the blank reference (which can be media for bacteria, or clean water for water-based samples) in the cuvette holder, and press the button once to record the blank value. Collecting these dark and blank references are important in calibrating for the OD Readout mode.

**OD Readout Mode**

In OD readout mode, both the measured OD and the raw value are displayed on screen. If reference values need to be re-recorded, press down on the button until the prompt for inserting the dark reference is displayed on the screen.
