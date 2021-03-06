EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R_US R1
U 1 1 609F66FC
P 5700 3000
F 0 "R1" V 5495 3000 50  0000 C CNN
F 1 "5.1K" V 5586 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5740 2990 50  0001 C CNN
F 3 "~" H 5700 3000 50  0001 C CNN
	1    5700 3000
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 609F72E2
P 5700 3650
F 0 "R2" V 5495 3650 50  0000 C CNN
F 1 "5.1K" V 5586 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 5740 3640 50  0001 C CNN
F 3 "~" H 5700 3650 50  0001 C CNN
	1    5700 3650
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 60A04087
P 6050 3750
F 0 "#PWR0101" H 6050 3500 50  0001 C CNN
F 1 "GND" H 6055 3577 50  0000 C CNN
F 2 "FlexPCB:Plated_Hole_D0.6mm" H 6050 3750 50  0001 C CNN
F 3 "" H 6050 3750 50  0001 C CNN
	1    6050 3750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 60A0729F
P 5150 3650
F 0 "J2" H 5178 3676 50  0000 L CNN
F 1 "CC2" H 5178 3585 50  0000 L CNN
F 2 "FlexPCB:Plated_Hole_D0.3mm" H 5150 3650 50  0001 C CNN
F 3 "~" H 5150 3650 50  0001 C CNN
	1    5150 3650
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 60A14901
P 5150 3000
F 0 "J1" H 5178 3026 50  0000 L CNN
F 1 "CC1" H 5178 2935 50  0000 L CNN
F 2 "FlexPCB:Plated_Hole_D0.3mm" H 5150 3000 50  0001 C CNN
F 3 "~" H 5150 3000 50  0001 C CNN
	1    5150 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5850 3650 6050 3650
Wire Wire Line
	6050 3650 6050 3750
Wire Wire Line
	5850 3000 6050 3000
Wire Wire Line
	6050 3000 6050 3650
Connection ~ 6050 3650
Wire Wire Line
	5350 3000 5550 3000
Wire Wire Line
	5350 3650 5550 3650
$EndSCHEMATC
