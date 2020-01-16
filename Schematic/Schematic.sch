EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date "sam. 04 avril 2015"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text Label 8750 1250 0    60   ~ 0
MOSI
Text Label 8750 1350 0    60   ~ 0
SS
Text Label 8750 1450 0    60   ~ 0
1(Tx1)
Text Label 8750 1550 0    60   ~ 0
0(Rx1)
Text Label 8750 1650 0    60   ~ 0
Reset
Text Label 8750 1850 0    60   ~ 0
2(SDA)
Text Label 8750 1950 0    60   ~ 0
3(**/SCL)
Text Label 8750 2050 0    60   ~ 0
4(A6)
Text Label 8750 2150 0    60   ~ 0
5(**)
Text Label 8750 2250 0    60   ~ 0
6(**/A7)
Text Label 8750 2350 0    60   ~ 0
7
Text Label 8750 2450 0    60   ~ 0
8(A8)
Text Label 8750 2550 0    60   ~ 0
9(**/A9)
Text Label 8750 2650 0    60   ~ 0
10(A10)
Text Label 8750 2750 0    60   ~ 0
11(**)
Text Label 8750 2850 0    60   ~ 0
12(A11)
Text Label 10650 1250 0    60   ~ 0
SCK
Text Label 10650 1350 0    60   ~ 0
MISO
Text Label 10250 1100 1    60   ~ 0
Vin
Text Label 10650 1650 0    60   ~ 0
Reset
Text Label 10650 2850 0    60   ~ 0
13(**)
Text Label 10650 2650 0    60   ~ 0
AREF
Text Label 10650 2550 0    60   ~ 0
A0
Text Label 10650 2450 0    60   ~ 0
A1
Text Label 10650 2350 0    60   ~ 0
A2
Text Label 10650 2250 0    60   ~ 0
A3
Text Label 10650 2150 0    60   ~ 0
A4
Text Label 10650 2050 0    60   ~ 0
A5
NoConn ~ 10150 1950
NoConn ~ 10150 1850
Text Notes 8550 575  0    60   ~ 0
Shield Arduino Micro Rev 3
Text Notes 10850 1000 0    60   ~ 0
Holes
NoConn ~ 10800 850 
Wire Notes Line
	8525 650  9875 650 
Wire Notes Line
	9875 650  9875 475 
$Comp
L Connector_Generic:Conn_01x17 P1
U 1 1 56D719DF
P 9550 2050
F 0 "P1" H 9550 2950 50  0000 C CNN
F 1 "Digital" H 9550 1150 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 9650 2050 30  0000 C CNN
F 3 "" H 9550 2050 50  0000 C CNN
	1    9550 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x17 P2
U 1 1 56D71A21
P 9950 2050
F 0 "P2" H 9950 2950 50  0000 C CNN
F 1 "Analog" H 9950 1150 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 10050 2050 30  0000 C CNN
F 3 "" H 9950 2050 50  0000 C CNN
	1    9950 2050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8750 1250 9350 1250
Wire Wire Line
	8750 1350 9350 1350
Wire Wire Line
	8750 1450 9350 1450
Wire Wire Line
	8750 1550 9350 1550
Wire Wire Line
	8750 1650 9350 1650
Wire Wire Line
	8750 1850 9350 1850
Wire Wire Line
	8750 1950 9350 1950
Wire Wire Line
	8750 2050 9350 2050
Wire Wire Line
	8750 2150 9350 2150
Wire Wire Line
	8750 2250 9350 2250
Wire Wire Line
	8750 2350 9350 2350
Wire Wire Line
	8750 2450 9350 2450
Wire Wire Line
	8750 2550 9350 2550
Wire Wire Line
	8750 2650 9350 2650
Wire Wire Line
	8750 2750 9350 2750
Wire Wire Line
	8750 2850 9350 2850
$Comp
L power:GND #PWR01
U 1 1 56D71E99
P 9250 3000
F 0 "#PWR01" H 9250 2750 50  0001 C CNN
F 1 "GND" H 9250 2850 50  0000 C CNN
F 2 "" H 9250 3000 50  0000 C CNN
F 3 "" H 9250 3000 50  0000 C CNN
	1    9250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9350 1750 9250 1750
Wire Wire Line
	9250 1750 9250 3000
Text Notes 9650 1250 0    60   ~ 0
1
Wire Wire Line
	10150 1450 10250 1450
Wire Wire Line
	10250 1450 10250 1100
Wire Wire Line
	10150 1750 10350 1750
Wire Wire Line
	10350 1750 10350 1100
$Comp
L power:+5V #PWR02
U 1 1 56D725B4
P 10350 1100
F 0 "#PWR02" H 10350 950 50  0001 C CNN
F 1 "+5V" H 10350 1240 28  0000 C CNN
F 2 "" H 10350 1100 50  0000 C CNN
F 3 "" H 10350 1100 50  0000 C CNN
	1    10350 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 56D727D3
P 10250 3000
F 0 "#PWR03" H 10250 2750 50  0001 C CNN
F 1 "GND" H 10250 2850 50  0000 C CNN
F 2 "" H 10250 3000 50  0000 C CNN
F 3 "" H 10250 3000 50  0000 C CNN
	1    10250 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 56D72867
P 10450 1000
F 0 "#PWR04" H 10450 850 50  0001 C CNN
F 1 "+3.3V" H 10450 1140 28  0000 C CNN
F 2 "" H 10450 1000 50  0000 C CNN
F 3 "" H 10450 1000 50  0000 C CNN
	1    10450 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 1250 10150 1250
Wire Wire Line
	10150 1350 10650 1350
Wire Wire Line
	10650 1650 10150 1650
Wire Wire Line
	10650 2050 10150 2050
Wire Wire Line
	10150 2150 10650 2150
Wire Wire Line
	10650 2250 10150 2250
Wire Wire Line
	10650 2350 10150 2350
Wire Wire Line
	10150 2450 10650 2450
Wire Wire Line
	10650 2550 10150 2550
Wire Wire Line
	10150 2650 10450 2650
Wire Wire Line
	10650 2850 10150 2850
Wire Wire Line
	10150 1550 10250 1550
Wire Wire Line
	10250 1550 10250 3000
Wire Wire Line
	10450 2750 10150 2750
Wire Notes Line
	8500 500  8500 3250
$Comp
L Connector_Generic:Conn_01x01 P3
U 1 1 56D72ED3
P 10800 650
F 0 "P3" V 10900 650 50  0000 C CNN
F 1 "CONN_01X01" H 10900 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 10722 722 20  0000 C CNN
F 3 "" H 10800 650 50  0000 C CNN
	1    10800 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P4
U 1 1 56D72FBF
P 10900 650
F 0 "P4" V 11000 650 50  0000 C CNN
F 1 "CONN_01X01" H 11000 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 10900 650 20  0001 C CNN
F 3 "" H 10900 650 50  0000 C CNN
	1    10900 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P5
U 1 1 56D72FE7
P 11000 650
F 0 "P5" V 11100 650 50  0000 C CNN
F 1 "CONN_01X01" H 11100 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 11000 650 20  0001 C CNN
F 3 "" H 11000 650 50  0000 C CNN
	1    11000 650 
	0    -1   -1   0   
$EndComp
$Comp
L Connector_Generic:Conn_01x01 P6
U 1 1 56D73012
P 11100 650
F 0 "P6" V 11200 650 50  0000 C CNN
F 1 "CONN_01X01" H 11200 650 50  0001 C CNN
F 2 "Socket_Arduino_Micro:1pin_Micro" H 11019 581 20  0000 C CNN
F 3 "" H 11100 650 50  0000 C CNN
	1    11100 650 
	0    -1   -1   0   
$EndComp
NoConn ~ 11100 850 
NoConn ~ 11000 850 
NoConn ~ 10900 850 
Wire Notes Line
	11200 1000 10650 1000
Wire Notes Line
	10650 1000 10650 500 
Wire Notes Line
	8500 3250 11200 3250
Wire Wire Line
	6950 4100 7000 4100
Wire Wire Line
	7000 4100 7000 4300
$Comp
L power:GND #PWR?
U 1 1 5E21527F
P 7000 4300
F 0 "#PWR?" H 7000 4050 50  0001 C CNN
F 1 "GND" H 7005 4127 50  0000 C CNN
F 2 "" H 7000 4300 50  0001 C CNN
F 3 "" H 7000 4300 50  0001 C CNN
	1    7000 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E215F92
P 7200 3050
F 0 "#PWR?" H 7200 2900 50  0001 C CNN
F 1 "+5V" H 7215 3223 50  0000 C CNN
F 2 "" H 7200 3050 50  0001 C CNN
F 3 "" H 7200 3050 50  0001 C CNN
	1    7200 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 4200 7200 4200
Wire Wire Line
	7200 4700 7200 4200
Wire Wire Line
	6550 3100 6550 3050
Wire Wire Line
	6550 3050 7000 3050
Wire Wire Line
	7000 3050 7000 4100
Connection ~ 7000 4100
Text Label 6050 4500 2    60   ~ 0
12(A11)
Wire Wire Line
	6050 4500 6150 4500
Wire Wire Line
	6150 4400 6050 4400
Wire Wire Line
	6150 4300 6050 4300
Wire Wire Line
	6150 4200 6050 4200
Text Label 6050 4400 2    60   ~ 0
11(**)
Text Label 6050 4300 2    60   ~ 0
10(A10)
Text Label 6050 4200 2    60   ~ 0
9(**/A9)
Wire Wire Line
	6550 4700 7200 4700
$Comp
L Display_Character:NHD-0420H1Z U?
U 1 1 5E20F23F
P 6550 3900
F 0 "U?" H 6550 3011 50  0000 C CNN
F 1 "NHD-0216XZ" H 6550 2920 50  0000 C CNN
F 2 "Display:NHD-0420H1Z" H 6550 3000 50  0001 C CNN
F 3 "http://www.newhavendisplay.com/specs/NHD-0420H1Z-FSW-GBW-33V3.pdf" H 6650 3800 50  0001 C CNN
	1    6550 3900
	1    0    0    -1  
$EndComp
NoConn ~ 6150 4100
NoConn ~ 6150 4000
NoConn ~ 6150 3900
NoConn ~ 6150 3800
Wire Wire Line
	6150 3500 6050 3500
Wire Wire Line
	6150 3400 6050 3400
Wire Wire Line
	6150 3300 6050 3300
Text Label 6050 3500 2    60   ~ 0
8(A8)
Text Label 6050 3400 2    60   ~ 0
7
Text Label 6050 3300 2    60   ~ 0
6(**/A7)
$Comp
L AmbientOptical:OPT101P U?
U 1 1 5E233C3D
P 4800 3450
F 0 "U?" H 5050 3750 60  0000 L CNN
F 1 "OPT101P" H 5050 3650 60  0000 L CNN
F 2 "digikey-footprints:DIP-8_W7.62mm" H 5000 3650 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fopt101" H 5000 3750 60  0001 L CNN
F 4 "296-23090-5-ND" H 5000 3850 60  0001 L CNN "Digi-Key_PN"
F 5 "OPT101P" H 5000 3950 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 5000 4050 60  0001 L CNN "Category"
F 7 "Optical Sensors - Ambient Light, IR, UV Sensors" H 5000 4150 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fopt101" H 5000 4250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/OPT101P/296-23090-5-ND/251177" H 5000 4350 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR OPT 650NM AMBIENT 8DIP" H 5000 4450 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5000 4550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5000 4650 60  0001 L CNN "Status"
	1    4800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 3150 4800 3050
Wire Wire Line
	4800 3750 4800 3800
$Comp
L power:GND #PWR?
U 1 1 5E23A150
P 4800 3850
F 0 "#PWR?" H 4800 3600 50  0001 C CNN
F 1 "GND" H 4805 3677 50  0000 C CNN
F 2 "" H 4800 3850 50  0001 C CNN
F 3 "" H 4800 3850 50  0001 C CNN
	1    4800 3850
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5E23A984
P 4800 3050
F 0 "#PWR?" H 4800 2900 50  0001 C CNN
F 1 "+5V" H 4815 3223 50  0000 C CNN
F 2 "" H 4800 3050 50  0001 C CNN
F 3 "" H 4800 3050 50  0001 C CNN
	1    4800 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3450 5150 3450
Text Label 5200 3450 0    50   ~ 0
A0
Wire Wire Line
	4500 3550 4500 3800
Wire Wire Line
	4500 3800 4800 3800
Connection ~ 4800 3800
Wire Wire Line
	4800 3800 4800 3850
Wire Wire Line
	4500 3450 4400 3450
Wire Wire Line
	4400 3450 4400 4100
Wire Wire Line
	4400 4100 5150 4100
Connection ~ 5150 3450
Wire Wire Line
	5150 3450 5200 3450
Wire Wire Line
	4500 3350 4250 3350
$Comp
L Device:R R?
U 1 1 5E241BD6
P 4250 3500
F 0 "R?" H 4500 3450 50  0000 R CNN
F 1 "100k" V 4250 3600 50  0000 R CNN
F 2 "" V 4180 3500 50  0001 C CNN
F 3 "~" H 4250 3500 50  0001 C CNN
	1    4250 3500
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV?
U 1 1 5E2424BC
P 4250 4100
F 0 "RV?" H 4150 4150 50  0000 R CNN
F 1 "500k" V 4250 4200 50  0000 R CNN
F 2 "" H 4250 4100 50  0001 C CNN
F 3 "~" H 4250 4100 50  0001 C CNN
	1    4250 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 3650 4250 3950
Wire Wire Line
	4250 4250 4250 4350
$Comp
L power:GND #PWR?
U 1 1 5E24C09C
P 4250 4350
F 0 "#PWR?" H 4250 4100 50  0001 C CNN
F 1 "GND" H 4255 4177 50  0000 C CNN
F 2 "" H 4250 4350 50  0001 C CNN
F 3 "" H 4250 4350 50  0001 C CNN
	1    4250 4350
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5E24FC77
P 2900 4400
F 0 "SW?" H 2900 4685 50  0000 C CNN
F 1 "40-2390-00" H 2900 4594 50  0000 C CNN
F 2 "" H 2900 4600 50  0001 C CNN
F 3 "~" H 2900 4600 50  0001 C CNN
	1    2900 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5E2558A5
P 3200 4400
F 0 "#PWR?" H 3200 4150 50  0001 C CNN
F 1 "GND" H 3205 4227 50  0000 C CNN
F 2 "" H 3200 4400 50  0001 C CNN
F 3 "" H 3200 4400 50  0001 C CNN
	1    3200 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D?
U 1 1 5E255DF6
P 2900 3150
F 0 "D?" H 2893 2895 50  0000 C CNN
F 1 "TLCY5800" H 2850 3000 50  0000 C CNN
F 2 "" H 2900 3150 50  0001 C CNN
F 3 "~" H 2900 3150 50  0001 C CNN
	1    2900 3150
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 3150 2650 3150
$Comp
L power:+5V #PWR?
U 1 1 5E258950
P 2650 3150
F 0 "#PWR?" H 2650 3000 50  0001 C CNN
F 1 "+5V" H 2665 3323 50  0000 C CNN
F 2 "" H 2650 3150 50  0001 C CNN
F 3 "" H 2650 3150 50  0001 C CNN
	1    2650 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3150 3050 3300
$Comp
L Device:R R?
U 1 1 5E25B003
P 2900 3300
F 0 "R?" V 3000 3300 50  0000 C CNN
F 1 "100R" V 2900 3300 50  0000 C CNN
F 2 "" V 2830 3300 50  0001 C CNN
F 3 "~" H 2900 3300 50  0001 C CNN
	1    2900 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 3300 2650 3300
$Comp
L power:GND #PWR?
U 1 1 5E25D5CA
P 2650 3300
F 0 "#PWR?" H 2650 3050 50  0001 C CNN
F 1 "GND" H 2655 3127 50  0000 C CNN
F 2 "" H 2650 3300 50  0001 C CNN
F 3 "" H 2650 3300 50  0001 C CNN
	1    2650 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3100 6650 2950
Text Label 6650 2950 0    50   ~ 0
5(**)
Text Label 2600 4400 2    50   ~ 0
4(A6)
Connection ~ 4400 4100
Wire Wire Line
	5150 4100 5150 3450
Wire Wire Line
	10450 1000 10450 2650
Connection ~ 10450 2650
Wire Wire Line
	10450 2650 10650 2650
Wire Wire Line
	10450 2650 10450 2750
Wire Wire Line
	3100 4400 3200 4400
Wire Wire Line
	2600 4400 2700 4400
Wire Wire Line
	7200 3050 7200 4200
Connection ~ 7200 4200
Text Notes 5750 2700 0    100  ~ 20
16x2 Character LCD
Text Notes 4300 2700 0    100  ~ 20
Photodiode
Text Notes 2450 2700 0    100  ~ 20
650nm LED
Text Notes 2400 3950 0    100  ~ 20
Push Button
$EndSCHEMATC
