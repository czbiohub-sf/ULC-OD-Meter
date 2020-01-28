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
Text Label 8000 3450 0    60   ~ 0
MOSI
Text Label 8000 3550 0    60   ~ 0
SS
Text Label 8000 3650 0    60   ~ 0
1(Tx1)
Text Label 8000 3750 0    60   ~ 0
0(Rx1)
Text Label 8000 3850 0    60   ~ 0
Reset
Text Label 8000 4050 0    60   ~ 0
2(SDA)
Text Label 8000 4150 0    60   ~ 0
3(**/SCL)
Text Label 8000 4250 0    60   ~ 0
4(A6)
Text Label 8000 4350 0    60   ~ 0
5(**)
Text Label 8000 4450 0    60   ~ 0
6(**/A7)
Text Label 8000 4550 0    60   ~ 0
7
Text Label 8000 4650 0    60   ~ 0
8(A8)
Text Label 8000 4750 0    60   ~ 0
9(**/A9)
Text Label 8000 4850 0    60   ~ 0
10(A10)
Text Label 8000 4950 0    60   ~ 0
11(**)
Text Label 8000 5050 0    60   ~ 0
12(A11)
Text Label 9900 3450 0    60   ~ 0
SCK
Text Label 9900 3550 0    60   ~ 0
MISO
Text Label 9500 3300 1    60   ~ 0
Vin
Text Label 9900 3850 0    60   ~ 0
Reset
Text Label 9900 5050 0    60   ~ 0
13(**)
Text Label 9900 4850 0    60   ~ 0
AREF
Text Label 9900 4750 0    60   ~ 0
A0
Text Label 9900 4650 0    60   ~ 0
A1
Text Label 9900 4550 0    60   ~ 0
A2
Text Label 9900 4450 0    60   ~ 0
A3
Text Label 9900 4350 0    60   ~ 0
A4
Text Label 9900 4250 0    60   ~ 0
A5
NoConn ~ 9400 4150
NoConn ~ 9400 4050
$Comp
L Connector_Generic:Conn_01x17 P1
U 1 1 56D719DF
P 8800 4250
F 0 "P1" H 8800 5150 50  0000 C CNN
F 1 "Digital" H 8800 3350 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 8900 4250 30  0000 C CNN
F 3 "" H 8800 4250 50  0000 C CNN
	1    8800 4250
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x17 P2
U 1 1 56D71A21
P 9200 4250
F 0 "P2" H 9200 5150 50  0000 C CNN
F 1 "Analog" H 9200 3350 50  0000 C CNN
F 2 "Socket_Arduino_Micro:Socket_Strip_Arduino_1x17" V 9300 4250 30  0000 C CNN
F 3 "" H 9200 4250 50  0000 C CNN
	1    9200 4250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8000 3450 8600 3450
Wire Wire Line
	8000 3550 8600 3550
Wire Wire Line
	8000 3650 8600 3650
Wire Wire Line
	8000 3750 8600 3750
Wire Wire Line
	8000 3850 8600 3850
Wire Wire Line
	8000 4050 8600 4050
Wire Wire Line
	8000 4150 8600 4150
Wire Wire Line
	8000 4250 8600 4250
Wire Wire Line
	8000 4350 8600 4350
Wire Wire Line
	8000 4450 8600 4450
Wire Wire Line
	8000 4550 8600 4550
Wire Wire Line
	8000 4650 8600 4650
Wire Wire Line
	8000 4750 8600 4750
Wire Wire Line
	8000 4850 8600 4850
Wire Wire Line
	8000 4950 8600 4950
Wire Wire Line
	8000 5050 8600 5050
$Comp
L power:GND #PWR01
U 1 1 56D71E99
P 8500 5200
F 0 "#PWR01" H 8500 4950 50  0001 C CNN
F 1 "GND" H 8500 5050 50  0000 C CNN
F 2 "" H 8500 5200 50  0000 C CNN
F 3 "" H 8500 5200 50  0000 C CNN
	1    8500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 3950 8500 3950
Wire Wire Line
	8500 3950 8500 5200
Text Notes 8900 3450 0    60   ~ 0
1
Wire Wire Line
	9400 3650 9500 3650
Wire Wire Line
	9500 3650 9500 3300
Wire Wire Line
	9400 3950 9600 3950
Wire Wire Line
	9600 3950 9600 3300
$Comp
L power:GND #PWR03
U 1 1 56D727D3
P 9500 5200
F 0 "#PWR03" H 9500 4950 50  0001 C CNN
F 1 "GND" H 9500 5050 50  0000 C CNN
F 2 "" H 9500 5200 50  0000 C CNN
F 3 "" H 9500 5200 50  0000 C CNN
	1    9500 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3450 9400 3450
Wire Wire Line
	9400 3550 9900 3550
Wire Wire Line
	9900 3850 9400 3850
Wire Wire Line
	9900 4250 9400 4250
Wire Wire Line
	9400 4350 9900 4350
Wire Wire Line
	9900 4450 9400 4450
Wire Wire Line
	9900 4550 9400 4550
Wire Wire Line
	9400 4650 9900 4650
Wire Wire Line
	9900 4750 9400 4750
Wire Wire Line
	9400 4850 9700 4850
Wire Wire Line
	9900 5050 9400 5050
Wire Wire Line
	9400 3750 9500 3750
Wire Wire Line
	9500 3750 9500 5200
Wire Wire Line
	9700 4950 9400 4950
Wire Wire Line
	7250 4300 7300 4300
Wire Wire Line
	7300 4300 7300 5000
$Comp
L power:GND #PWR0101
U 1 1 5E21527F
P 7300 5100
F 0 "#PWR0101" H 7300 4850 50  0001 C CNN
F 1 "GND" H 7305 4927 50  0000 C CNN
F 2 "" H 7300 5100 50  0001 C CNN
F 3 "" H 7300 5100 50  0001 C CNN
	1    7300 5100
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0102
U 1 1 5E215F92
P 7500 3150
F 0 "#PWR0102" H 7500 3000 50  0001 C CNN
F 1 "+5V" H 7515 3323 50  0000 C CNN
F 2 "" H 7500 3150 50  0001 C CNN
F 3 "" H 7500 3150 50  0001 C CNN
	1    7500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3300 6850 3250
Text Label 6350 4700 2    60   ~ 0
12(A11)
Wire Wire Line
	6350 4700 6450 4700
Wire Wire Line
	6450 4600 6350 4600
Wire Wire Line
	6450 4500 6350 4500
Wire Wire Line
	6450 4400 6350 4400
Text Label 6350 4600 2    60   ~ 0
11(**)
Text Label 6350 4500 2    60   ~ 0
10(A10)
Text Label 6350 4400 2    60   ~ 0
9(**/A9)
$Comp
L Display_Character:NHD-0420H1Z U2
U 1 1 5E20F23F
P 6850 4100
F 0 "U2" H 6650 3200 50  0000 C CNN
F 1 "NHD-0216XZ" H 6650 3100 50  0000 C CNN
F 2 "Display:NHD-0420H1Z" H 6850 3200 50  0001 C CNN
F 3 "http://www.newhavendisplay.com/specs/NHD-0420H1Z-FSW-GBW-33V3.pdf" H 6950 4000 50  0001 C CNN
	1    6850 4100
	1    0    0    -1  
$EndComp
NoConn ~ 6450 4300
NoConn ~ 6450 4200
NoConn ~ 6450 4100
NoConn ~ 6450 4000
Wire Wire Line
	6450 3700 6350 3700
Wire Wire Line
	6450 3600 6350 3600
Wire Wire Line
	6450 3500 6350 3500
Text Label 6350 3700 2    60   ~ 0
8(A8)
Text Label 6350 3600 2    60   ~ 0
7
Text Label 6350 3500 2    60   ~ 0
6(**/A7)
$Comp
L ODMeter-rescue:OPT101P-AmbientOptical-ODMeter-rescue-ODMeter-rescue U1
U 1 1 5E233C3D
P 5100 3650
F 0 "U1" H 5350 3950 60  0000 L CNN
F 1 "OPT101P" H 5350 3850 60  0000 L CNN
F 2 "digikey-footprints:DIP-8_W7.62mm" H 5300 3850 60  0001 L CNN
F 3 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fopt101" H 5300 3950 60  0001 L CNN
F 4 "296-23090-5-ND" H 5300 4050 60  0001 L CNN "Digi-Key_PN"
F 5 "OPT101P" H 5300 4150 60  0001 L CNN "MPN"
F 6 "Sensors, Transducers" H 5300 4250 60  0001 L CNN "Category"
F 7 "Optical Sensors - Ambient Light, IR, UV Sensors" H 5300 4350 60  0001 L CNN "Family"
F 8 "http://www.ti.com/general/docs/suppproductinfo.tsp?distId=10&gotoUrl=http%3A%2F%2Fwww.ti.com%2Flit%2Fgpn%2Fopt101" H 5300 4450 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/texas-instruments/OPT101P/296-23090-5-ND/251177" H 5300 4550 60  0001 L CNN "DK_Detail_Page"
F 10 "SENSOR OPT 650NM AMBIENT 8DIP" H 5300 4650 60  0001 L CNN "Description"
F 11 "Texas Instruments" H 5300 4750 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5300 4850 60  0001 L CNN "Status"
	1    5100 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 3350 5100 3250
Wire Wire Line
	5100 3950 5100 4000
$Comp
L power:GND #PWR0103
U 1 1 5E23A150
P 5100 4050
F 0 "#PWR0103" H 5100 3800 50  0001 C CNN
F 1 "GND" H 5105 3877 50  0000 C CNN
F 2 "" H 5100 4050 50  0001 C CNN
F 3 "" H 5100 4050 50  0001 C CNN
	1    5100 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0104
U 1 1 5E23A984
P 5100 3250
F 0 "#PWR0104" H 5100 3100 50  0001 C CNN
F 1 "+5V" H 5115 3423 50  0000 C CNN
F 2 "" H 5100 3250 50  0001 C CNN
F 3 "" H 5100 3250 50  0001 C CNN
	1    5100 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3650 5450 3650
Text Label 5500 3650 0    50   ~ 0
A0
Wire Wire Line
	4800 3750 4800 4000
Wire Wire Line
	4800 4000 5100 4000
Connection ~ 5100 4000
Wire Wire Line
	5100 4000 5100 4050
Wire Wire Line
	4700 4300 5450 4300
Connection ~ 5450 3650
Wire Wire Line
	5450 3650 5500 3650
Wire Wire Line
	4800 3550 4550 3550
$Comp
L Device:R R2
U 1 1 5E241BD6
P 4550 3700
F 0 "R2" H 4800 3650 50  0000 R CNN
F 1 "100k" V 4550 3800 50  0000 R CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 4480 3700 50  0001 C CNN
F 3 "~" H 4550 3700 50  0001 C CNN
	1    4550 3700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_POT RV1
U 1 1 5E2424BC
P 4550 4300
F 0 "RV1" H 4450 4350 50  0000 R CNN
F 1 "500k" V 4550 4400 50  0000 R CNN
F 2 "" H 4550 4300 50  0001 C CNN
F 3 "~" H 4550 4300 50  0001 C CNN
	1    4550 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3850 4550 4150
Wire Wire Line
	4550 4450 4550 4550
$Comp
L power:GND #PWR0105
U 1 1 5E24C09C
P 4550 4550
F 0 "#PWR0105" H 4550 4300 50  0001 C CNN
F 1 "GND" H 4555 4377 50  0000 C CNN
F 2 "" H 4550 4550 50  0001 C CNN
F 3 "" H 4550 4550 50  0001 C CNN
	1    4550 4550
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5E24FC77
P 2000 3350
F 0 "SW1" H 2000 3635 50  0000 C CNN
F 1 "40-2390-00" H 2000 3544 50  0000 C CNN
F 2 "" H 2000 3550 50  0001 C CNN
F 3 "~" H 2000 3550 50  0001 C CNN
	1    2000 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5E2558A5
P 2300 3350
F 0 "#PWR0106" H 2300 3100 50  0001 C CNN
F 1 "GND" H 2305 3177 50  0000 C CNN
F 2 "" H 2300 3350 50  0001 C CNN
F 3 "" H 2300 3350 50  0001 C CNN
	1    2300 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5E255DF6
P 3500 3350
F 0 "D1" H 3493 3095 50  0000 C CNN
F 1 "TLCY5800" H 3450 3200 50  0000 C CNN
F 2 "" H 3500 3350 50  0001 C CNN
F 3 "~" H 3500 3350 50  0001 C CNN
	1    3500 3350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 3350 3250 3350
$Comp
L power:+5V #PWR0107
U 1 1 5E258950
P 3250 3350
F 0 "#PWR0107" H 3250 3200 50  0001 C CNN
F 1 "+5V" H 3265 3523 50  0000 C CNN
F 2 "" H 3250 3350 50  0001 C CNN
F 3 "" H 3250 3350 50  0001 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 3350 3650 3500
$Comp
L Device:R R1
U 1 1 5E25B003
P 3500 3500
F 0 "R1" V 3600 3500 50  0000 C CNN
F 1 "100R" V 3500 3500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 3430 3500 50  0001 C CNN
F 3 "~" H 3500 3500 50  0001 C CNN
	1    3500 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 3500 3250 3500
$Comp
L power:GND #PWR0108
U 1 1 5E25D5CA
P 3250 3500
F 0 "#PWR0108" H 3250 3250 50  0001 C CNN
F 1 "GND" H 3255 3327 50  0000 C CNN
F 2 "" H 3250 3500 50  0001 C CNN
F 3 "" H 3250 3500 50  0001 C CNN
	1    3250 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 3300 6950 3150
Text Label 6950 3150 0    50   ~ 0
5(**)
Text Label 1700 3350 2    50   ~ 0
4(A6)
Wire Wire Line
	5450 4300 5450 3650
Wire Wire Line
	9700 3200 9700 4850
Connection ~ 9700 4850
Wire Wire Line
	9700 4850 9900 4850
Wire Wire Line
	9700 4850 9700 4950
Wire Wire Line
	2200 3350 2300 3350
Wire Wire Line
	1700 3350 1800 3350
Text Notes 6050 2900 0    100  ~ 20
16x2 Character LCD
Text Notes 4600 2900 0    100  ~ 20
Photodiode
Text Notes 3050 2900 0    100  ~ 20
650nm LED
Text Notes 1500 2900 0    100  ~ 20
Push Button
NoConn ~ 4800 3650
Wire Wire Line
	7250 4400 7500 4400
Wire Wire Line
	6850 4900 6850 5000
Wire Wire Line
	6850 5000 7300 5000
Connection ~ 7300 5000
Wire Wire Line
	7300 5100 7300 5000
Wire Wire Line
	6850 3250 7500 3250
Wire Wire Line
	7500 3150 7500 3250
Wire Wire Line
	7500 3250 7500 4400
Connection ~ 7500 3250
$Comp
L power:+5V #PWR?
U 1 1 5E35B192
P 9600 3300
F 0 "#PWR?" H 9600 3150 50  0001 C CNN
F 1 "+5V" H 9550 3450 50  0000 C CNN
F 2 "" H 9600 3300 50  0001 C CNN
F 3 "" H 9600 3300 50  0001 C CNN
	1    9600 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR?
U 1 1 5E35E229
P 9700 3200
F 0 "#PWR?" H 9700 3050 50  0001 C CNN
F 1 "+3.3V" H 9700 3350 50  0000 C CNN
F 2 "" H 9700 3200 50  0001 C CNN
F 3 "" H 9700 3200 50  0001 C CNN
	1    9700 3200
	1    0    0    -1  
$EndComp
Text Notes 8450 2900 0    100  ~ 20
Arduino Micro
$EndSCHEMATC
