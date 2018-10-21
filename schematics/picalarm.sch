EESchema Schematic File Version 4
LIBS:picalarm-cache
EELAYER 26 0
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
L picalarm:PIC16F15344 U4
U 1 1 5BBF0E10
P 7150 1850
F 0 "U4" H 7150 2628 50  0000 R CNN
F 1 "PIC16F15344" H 7150 2537 50  0000 R CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 7150 1850 50  0001 C CNN
F 3 "" H 7150 1850 50  0001 C CNN
	1    7150 1850
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U1
U 1 1 5BBF25B4
P 1950 5200
F 0 "U1" H 1950 5867 50  0000 C CNN
F 1 "7Segment" H 1950 5776 50  0000 C CNN
F 2 "Display_7Segment:SBC18-11SURKCGKWA" H 1950 4600 50  0001 C CNN
F 3 "" H 1450 5675 50  0001 L CNN
	1    1950 5200
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U2
U 1 1 5BBF25EE
P 3550 5200
F 0 "U2" H 3550 5867 50  0000 C CNN
F 1 "7Segment" H 3550 5776 50  0000 C CNN
F 2 "Display_7Segment:SBC18-11SURKCGKWA" H 3550 4600 50  0001 C CNN
F 3 "" H 3050 5675 50  0001 L CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U3
U 1 1 5BBF2634
P 5900 5200
F 0 "U3" H 5900 5867 50  0000 C CNN
F 1 "7Segment" H 5900 5776 50  0000 C CNN
F 2 "Display_7Segment:SBC18-11SURKCGKWA" H 5900 4600 50  0001 C CNN
F 3 "" H 5400 5675 50  0001 L CNN
	1    5900 5200
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U5
U 1 1 5BBF2668
P 7650 5200
F 0 "U5" H 7650 5867 50  0000 C CNN
F 1 "7Segment" H 7650 5776 50  0000 C CNN
F 2 "Display_7Segment:SBC18-11SURKCGKWA" H 7650 4600 50  0001 C CNN
F 3 "" H 7150 5675 50  0001 L CNN
	1    7650 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D2
U 1 1 5BBF27FD
P 4350 5050
F 0 "D2" V 4388 4933 50  0000 R CNN
F 1 "Red LED" V 4297 4933 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 4350 5050 50  0001 C CNN
F 3 "~" H 4350 5050 50  0001 C CNN
	1    4350 5050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D3
U 1 1 5BBF2869
P 4350 5600
F 0 "D3" V 4388 5483 50  0000 R CNN
F 1 "Red LED" V 4297 5483 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 4350 5600 50  0001 C CNN
F 3 "~" H 4350 5600 50  0001 C CNN
	1    4350 5600
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal X1
U 1 1 5BBF9C25
P 6250 2550
F 0 "X1" V 6296 2419 50  0000 R CNN
F 1 "32.768 KHz" V 6205 2419 50  0000 R CNN
F 2 "Crystal:Crystal_DS26_D2.0mm_L6.0mm_Horizontal" H 6250 2550 50  0001 C CNN
F 3 "~" H 6250 2550 50  0001 C CNN
	1    6250 2550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6250 2300 6250 2400
Wire Wire Line
	6250 2300 6450 2300
$Comp
L Switch:SW_SPDT SW4
U 1 1 5BBFA913
P 1800 3100
F 0 "SW4" H 1800 2775 50  0000 C CNN
F 1 "Alarm On" H 1800 2866 50  0000 C CNN
F 2 "Button_Switch_THT:SW_CuK_OS102011MA1QN1_SPDT_Angled" H 1800 3100 50  0001 C CNN
F 3 "" H 1800 3100 50  0001 C CNN
	1    1800 3100
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2700 6250 2800
Wire Wire Line
	6250 2800 6450 2800
$Comp
L Device:Buzzer BZ1
U 1 1 5BBFC3D9
P 8000 3150
F 0 "BZ1" H 8153 3179 50  0000 L CNN
F 1 "Buzzer" H 8153 3088 50  0000 L CNN
F 2 "Buzzer_Beeper:Buzzer_12x9.5RM7.6" V 7975 3250 50  0001 C CNN
F 3 "~" V 7975 3250 50  0001 C CNN
	1    8000 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1000 7350 1000
Wire Wire Line
	7150 1250 7150 1000
$Comp
L Device:C_Small C1
U 1 1 5BC571D5
P 7350 1100
F 0 "C1" H 7442 1146 50  0000 L CNN
F 1 "0.1µF" H 7442 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7350 1100 50  0001 C CNN
F 3 "~" H 7350 1100 50  0001 C CNN
	1    7350 1100
	1    0    0    -1  
$EndComp
Connection ~ 7350 1000
Wire Wire Line
	7350 1000 7950 1000
$Comp
L Device:C_Small C2
U 1 1 5BC5722B
P 7950 1100
F 0 "C2" H 8042 1146 50  0000 L CNN
F 1 "0.01µF" H 8042 1055 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 7950 1100 50  0001 C CNN
F 3 "~" H 7950 1100 50  0001 C CNN
	1    7950 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 850  7950 1000
Connection ~ 7950 1000
$Comp
L Device:R_US R7
U 1 1 5BC58AD2
P 2050 1000
F 0 "R7" V 2255 1000 50  0000 C CNN
F 1 "10k" V 2164 1000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2090 990 50  0001 C CNN
F 3 "~" H 2050 1000 50  0001 C CNN
	1    2050 1000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5BC58EBE
P 2050 1650
F 0 "R8" V 2255 1650 50  0000 C CNN
F 1 "10k" V 2164 1650 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2090 1640 50  0001 C CNN
F 3 "~" H 2050 1650 50  0001 C CNN
	1    2050 1650
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5BC59389
P 1700 1000
F 0 "SW1" H 1700 1285 50  0000 C CNN
F 1 "Hour" H 1700 1194 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1700 1200 50  0001 C CNN
F 3 "" H 1700 1200 50  0001 C CNN
	1    1700 1000
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5BC593F5
P 1700 1650
F 0 "SW2" H 1700 1935 50  0000 C CNN
F 1 "Minute" H 1700 1844 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1700 1850 50  0001 C CNN
F 3 "" H 1700 1850 50  0001 C CNN
	1    1700 1650
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW3
U 1 1 5BC5944D
P 1700 2300
F 0 "SW3" H 1700 2585 50  0000 C CNN
F 1 "Alarm Set" H 1700 2494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm" H 1700 2500 50  0001 C CNN
F 3 "" H 1700 2500 50  0001 C CNN
	1    1700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 800  1350 1000
Wire Wire Line
	1350 1000 1500 1000
$Comp
L Device:R_US R3
U 1 1 5BC5A2F2
P 1900 1150
F 0 "R3" H 1968 1196 50  0000 L CNN
F 1 "10k" H 1968 1105 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1940 1140 50  0001 C CNN
F 3 "~" H 1900 1150 50  0001 C CNN
	1    1900 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1000 1350 1650
Wire Wire Line
	1350 1650 1500 1650
Connection ~ 1350 1000
$Comp
L Device:R_US R4
U 1 1 5BC5AA57
P 1900 1800
F 0 "R4" H 1968 1846 50  0000 L CNN
F 1 "10k" H 1968 1755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1940 1790 50  0001 C CNN
F 3 "~" H 1900 1800 50  0001 C CNN
	1    1900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 1650 1350 2300
Wire Wire Line
	1350 2300 1500 2300
Connection ~ 1350 1650
$Comp
L Device:R_US R5
U 1 1 5BC5B66F
P 1900 2450
F 0 "R5" H 1968 2496 50  0000 L CNN
F 1 "10k" H 1968 2405 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1940 2440 50  0001 C CNN
F 3 "~" H 1900 2450 50  0001 C CNN
	1    1900 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 5BC5B729
P 2050 2300
F 0 "R9" V 2255 2300 50  0000 C CNN
F 1 "10k" V 2164 2300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2090 2290 50  0001 C CNN
F 3 "~" H 2050 2300 50  0001 C CNN
	1    2050 2300
	0    -1   -1   0   
$EndComp
Connection ~ 1900 2300
Text GLabel 8750 1500 2    50   Output ~ 0
SEGMENT_B
Text GLabel 8750 1600 2    50   Output ~ 0
SEGMENT_G
Text GLabel 8750 1700 2    50   Output ~ 0
SEGMENT_D
Text GLabel 8750 1800 2    50   Output ~ 0
SEGMENT_A
Text GLabel 8750 1900 2    50   Output ~ 0
SEGMENT_C
Text GLabel 8750 2000 2    50   Output ~ 0
SEGMENT_F
Text GLabel 8750 2100 2    50   Output ~ 0
SEGMENT_E
Wire Wire Line
	7950 5500 7950 5600
Wire Wire Line
	6200 5500 6200 5600
Wire Wire Line
	2250 5500 2250 5600
Wire Wire Line
	3850 5500 3850 5600
Connection ~ 1900 1650
Connection ~ 1900 1000
$Comp
L Device:Q_NPN_EBC Q1
U 1 1 5BC68F53
P 2150 5950
F 0 "Q1" H 2341 5950 50  0000 L CNN
F 1 "Q_NPN_BCE" H 2341 5905 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 2350 6050 50  0001 C CNN
F 3 "~" H 2150 5950 50  0001 C CNN
	1    2150 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q2
U 1 1 5BC68FB7
P 3750 5950
F 0 "Q2" H 3941 5950 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3941 5905 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 3950 6050 50  0001 C CNN
F 3 "~" H 3750 5950 50  0001 C CNN
	1    3750 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q3
U 1 1 5BC69015
P 6100 5950
F 0 "Q3" H 6291 5950 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6291 5905 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 6300 6050 50  0001 C CNN
F 3 "~" H 6100 5950 50  0001 C CNN
	1    6100 5950
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q5
U 1 1 5BC6907D
P 7850 5950
F 0 "Q5" H 8041 5950 50  0000 L CNN
F 1 "Q_NPN_BCE" H 8041 5905 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8050 6050 50  0001 C CNN
F 3 "~" H 7850 5950 50  0001 C CNN
	1    7850 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 5600 7950 5750
Connection ~ 7950 5600
Wire Wire Line
	6200 5600 6200 5750
Connection ~ 6200 5600
Wire Wire Line
	3850 5600 3850 5750
Connection ~ 3850 5600
Wire Wire Line
	2250 5600 2250 5750
Connection ~ 2250 5600
Text GLabel 7850 2300 2    50   Output ~ 0
CATH_MINUTES_ONES
Text GLabel 7850 2400 2    50   Output ~ 0
CATH_MINUTES_TENS
Text GLabel 7850 2500 2    50   Output ~ 0
CATH_HOURS_TENS
Text GLabel 7850 2600 2    50   Output ~ 0
CATH_HOURS_ONES
Text GLabel 1650 4900 0    50   Input ~ 0
SEGMENT_A
Text GLabel 1650 5000 0    50   Input ~ 0
SEGMENT_B
Text GLabel 1650 5100 0    50   Input ~ 0
SEGMENT_C
Text GLabel 1650 5200 0    50   Input ~ 0
SEGMENT_D
Text GLabel 1650 5300 0    50   Input ~ 0
SEGMENT_E
Text GLabel 1650 5500 0    50   Input ~ 0
SEGMENT_G
Text GLabel 1650 5950 0    50   Input ~ 0
CATH_HOURS_TENS
Text GLabel 3250 4900 0    50   Input ~ 0
SEGMENT_A
Text GLabel 3250 5000 0    50   Input ~ 0
SEGMENT_B
Text GLabel 3250 5100 0    50   Input ~ 0
SEGMENT_C
Text GLabel 3250 5200 0    50   Input ~ 0
SEGMENT_D
Text GLabel 3250 5300 0    50   Input ~ 0
SEGMENT_E
Text GLabel 3250 5400 0    50   Input ~ 0
SEGMENT_F
Text GLabel 3250 5500 0    50   Input ~ 0
SEGMENT_G
Text GLabel 5600 4900 0    50   Input ~ 0
SEGMENT_A
Text GLabel 5600 5000 0    50   Input ~ 0
SEGMENT_B
Text GLabel 5600 5100 0    50   Input ~ 0
SEGMENT_C
Text GLabel 5600 5200 0    50   Input ~ 0
SEGMENT_D
Text GLabel 5600 5300 0    50   Input ~ 0
SEGMENT_E
Text GLabel 5600 5400 0    50   Input ~ 0
SEGMENT_F
Text GLabel 5600 5500 0    50   Input ~ 0
SEGMENT_G
Text GLabel 7350 4900 0    50   Input ~ 0
SEGMENT_A
Text GLabel 7350 5000 0    50   Input ~ 0
SEGMENT_B
Text GLabel 7350 5100 0    50   Input ~ 0
SEGMENT_C
Text GLabel 7350 5200 0    50   Input ~ 0
SEGMENT_D
Text GLabel 7350 5300 0    50   Input ~ 0
SEGMENT_E
Text GLabel 7350 5400 0    50   Input ~ 0
SEGMENT_F
Text GLabel 7350 5500 0    50   Input ~ 0
SEGMENT_G
Text GLabel 3250 5950 0    50   Input ~ 0
CATH_HOURS_ONES
Text GLabel 5600 5950 0    50   Input ~ 0
CATH_MINUTES_TENS
Text GLabel 7350 5950 0    50   Input ~ 0
CATH_MINUTES_ONES
Wire Wire Line
	1150 5600 1650 5600
Wire Wire Line
	1650 5400 1150 5400
Wire Wire Line
	1150 5400 1150 5600
Text GLabel 4050 4750 1    50   Input ~ 0
SEGMENT_F
$Comp
L Device:R_US R12
U 1 1 5BC74C27
P 4200 4900
F 0 "R12" V 4405 4900 50  0000 C CNN
F 1 "160R" V 4314 4900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4240 4890 50  0001 C CNN
F 3 "~" H 4200 4900 50  0001 C CNN
	1    4200 4900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 4900 4050 4750
Wire Wire Line
	4050 4900 4050 5450
Connection ~ 4050 4900
$Comp
L Device:R_US R13
U 1 1 5BC7A60E
P 4200 5450
F 0 "R13" V 4405 5450 50  0000 C CNN
F 1 "160R" V 4314 5450 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 4240 5440 50  0001 C CNN
F 3 "~" H 4200 5450 50  0001 C CNN
	1    4200 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R16
U 1 1 5BC7D8AB
P 7500 5950
F 0 "R16" V 7705 5950 50  0000 C CNN
F 1 "10K" V 7614 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7540 5940 50  0001 C CNN
F 3 "~" H 7500 5950 50  0001 C CNN
	1    7500 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R17
U 1 1 5BC83CEF
P 8000 1500
F 0 "R17" V 8205 1500 50  0000 C CNN
F 1 "100R" V 8114 1500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8040 1490 50  0001 C CNN
F 3 "~" H 8000 1500 50  0001 C CNN
	1    8000 1500
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R20
U 1 1 5BC8461A
P 8300 1600
F 0 "R20" V 8505 1600 50  0000 C CNN
F 1 "100R" V 8414 1600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8340 1590 50  0001 C CNN
F 3 "~" H 8300 1600 50  0001 C CNN
	1    8300 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R22
U 1 1 5BC84F48
P 8600 1700
F 0 "R22" V 8805 1700 50  0000 C CNN
F 1 "100R" V 8714 1700 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8640 1690 50  0001 C CNN
F 3 "~" H 8600 1700 50  0001 C CNN
	1    8600 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R18
U 1 1 5BC85873
P 8000 1800
F 0 "R18" V 8205 1800 50  0000 C CNN
F 1 "100R" V 8114 1800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8040 1790 50  0001 C CNN
F 3 "~" H 8000 1800 50  0001 C CNN
	1    8000 1800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 5BC861A5
P 8300 1900
F 0 "R21" V 8505 1900 50  0000 C CNN
F 1 "100R" V 8414 1900 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8340 1890 50  0001 C CNN
F 3 "~" H 8300 1900 50  0001 C CNN
	1    8300 1900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R23
U 1 1 5BC86AD6
P 8600 2000
F 0 "R23" V 8805 2000 50  0000 C CNN
F 1 "100R" V 8714 2000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8640 1990 50  0001 C CNN
F 3 "~" H 8600 2000 50  0001 C CNN
	1    8600 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R19
U 1 1 5BC8740C
P 8000 2100
F 0 "R19" V 8205 2100 50  0000 C CNN
F 1 "100R" V 8114 2100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8040 2090 50  0001 C CNN
F 3 "~" H 8000 2100 50  0001 C CNN
	1    8000 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 1600 7850 1600
Wire Wire Line
	7850 1700 8450 1700
Wire Wire Line
	8450 1600 8750 1600
Wire Wire Line
	8750 1500 8150 1500
Wire Wire Line
	8150 1800 8750 1800
Wire Wire Line
	8750 1900 8450 1900
Wire Wire Line
	8150 1900 7850 1900
Wire Wire Line
	7850 2000 8450 2000
Wire Wire Line
	8150 2100 8750 2100
$Comp
L Device:R_US R14
U 1 1 5BC951F1
P 5750 5950
F 0 "R14" V 5955 5950 50  0000 C CNN
F 1 "10K" V 5864 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5790 5940 50  0001 C CNN
F 3 "~" H 5750 5950 50  0001 C CNN
	1    5750 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R11
U 1 1 5BC99AD4
P 3400 5950
F 0 "R11" V 3605 5950 50  0000 C CNN
F 1 "10K" V 3514 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3440 5940 50  0001 C CNN
F 3 "~" H 3400 5950 50  0001 C CNN
	1    3400 5950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R2
U 1 1 5BC9D610
P 1800 5950
F 0 "R2" V 2005 5950 50  0000 C CNN
F 1 "10K" V 1914 5950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1840 5940 50  0001 C CNN
F 3 "~" H 1800 5950 50  0001 C CNN
	1    1800 5950
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6450 2400 6450 2800
$Comp
L Device:R_US R15
U 1 1 5BCA353D
P 7450 3000
F 0 "R15" H 7518 3046 50  0000 L CNN
F 1 "1K" H 7518 2955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7490 2990 50  0001 C CNN
F 3 "~" H 7450 3000 50  0001 C CNN
	1    7450 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_EBC Q4
U 1 1 5BCA4279
P 7800 3450
F 0 "Q4" H 7991 3496 50  0000 L CNN
F 1 "Q_NPN_BCE" H 7991 3405 50  0001 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Wide" H 8000 3550 50  0001 C CNN
F 3 "~" H 7800 3450 50  0001 C CNN
	1    7800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 3150 7450 3450
Wire Wire Line
	7450 3450 7600 3450
Text GLabel 6450 1500 0    50   Input ~ 0
BTN_HOUR
Text GLabel 6450 1600 0    50   Input ~ 0
BTN_MINUTE
Text GLabel 6450 1700 0    50   Input ~ 0
BTN_ALARM_ADJUST
Text GLabel 6450 1800 0    50   Input ~ 0
SWT_ALARM
Text GLabel 2200 1000 2    50   Output ~ 0
BTN_HOUR
Text GLabel 2200 1650 2    50   Output ~ 0
BTN_MINUTE
Text GLabel 2200 2300 2    50   Output ~ 0
BTN_ALARM_ADJUST
Wire Wire Line
	1350 2300 1350 3000
Wire Wire Line
	1350 3000 1600 3000
Connection ~ 1350 2300
$Comp
L Device:R_US R1
U 1 1 5BCB2952
P 1600 3350
F 0 "R1" H 1668 3396 50  0000 L CNN
F 1 "10k" H 1668 3305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1640 3340 50  0001 C CNN
F 3 "~" H 1600 3350 50  0001 C CNN
	1    1600 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BCB3ACD
P 2000 3550
F 0 "D1" V 2038 3433 50  0000 R CNN
F 1 "Red LED" V 1947 3433 50  0000 R CNN
F 2 "LED_THT:LED_D4.0mm" H 2000 3550 50  0001 C CNN
F 3 "~" H 2000 3550 50  0001 C CNN
	1    2000 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R6
U 1 1 5BCB3CBB
P 2000 3250
F 0 "R6" H 2068 3296 50  0000 L CNN
F 1 "160R" H 2068 3205 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2040 3240 50  0001 C CNN
F 3 "~" H 2000 3250 50  0001 C CNN
	1    2000 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 5BCB48EF
P 2150 3100
F 0 "R10" V 2355 3100 50  0000 C CNN
F 1 "10k" V 2264 3100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2190 3090 50  0001 C CNN
F 3 "~" H 2150 3100 50  0001 C CNN
	1    2150 3100
	0    -1   -1   0   
$EndComp
Connection ~ 2000 3100
Text GLabel 2300 3100 2    50   Output ~ 0
SWT_ALARM
$Comp
L power:VDD #PWR020
U 1 1 5BCB99BB
P 7950 850
F 0 "#PWR020" H 7950 700 50  0001 C CNN
F 1 "VDD" H 7967 1023 50  0000 C CNN
F 2 "" H 7950 850 50  0001 C CNN
F 3 "" H 7950 850 50  0001 C CNN
	1    7950 850 
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR018
U 1 1 5BCBA52A
P 7900 3050
F 0 "#PWR018" H 7900 2900 50  0001 C CNN
F 1 "VDD" H 7917 3223 50  0000 C CNN
F 2 "" H 7900 3050 50  0001 C CNN
F 3 "" H 7900 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02
U 1 1 5BCBA591
P 1350 800
F 0 "#PWR02" H 1350 650 50  0001 C CNN
F 1 "VDD" H 1367 973 50  0000 C CNN
F 2 "" H 1350 800 50  0001 C CNN
F 3 "" H 1350 800 50  0001 C CNN
	1    1350 800 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5BCBACC6
P 2250 6150
F 0 "#PWR08" H 2250 5900 50  0001 C CNN
F 1 "GND" H 2255 5977 50  0001 C CNN
F 2 "" H 2250 6150 50  0001 C CNN
F 3 "" H 2250 6150 50  0001 C CNN
	1    2250 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BCBB920
P 1150 5600
F 0 "#PWR01" H 1150 5350 50  0001 C CNN
F 1 "GND" H 1155 5427 50  0001 C CNN
F 2 "" H 1150 5600 50  0001 C CNN
F 3 "" H 1150 5600 50  0001 C CNN
	1    1150 5600
	1    0    0    -1  
$EndComp
Connection ~ 1150 5600
$Comp
L power:GND #PWR09
U 1 1 5BCBB987
P 3250 5600
F 0 "#PWR09" H 3250 5350 50  0001 C CNN
F 1 "GND" H 3255 5427 50  0001 C CNN
F 2 "" H 3250 5600 50  0001 C CNN
F 3 "" H 3250 5600 50  0001 C CNN
	1    3250 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5BCBB9EE
P 5600 5600
F 0 "#PWR013" H 5600 5350 50  0001 C CNN
F 1 "GND" H 5605 5427 50  0001 C CNN
F 2 "" H 5600 5600 50  0001 C CNN
F 3 "" H 5600 5600 50  0001 C CNN
	1    5600 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5BCBBA55
P 7350 5600
F 0 "#PWR016" H 7350 5350 50  0001 C CNN
F 1 "GND" H 7355 5427 50  0001 C CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5BCBBABC
P 3850 6150
F 0 "#PWR010" H 3850 5900 50  0001 C CNN
F 1 "GND" H 3855 5977 50  0001 C CNN
F 2 "" H 3850 6150 50  0001 C CNN
F 3 "" H 3850 6150 50  0001 C CNN
	1    3850 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5BCBBB56
P 6200 6150
F 0 "#PWR014" H 6200 5900 50  0001 C CNN
F 1 "GND" H 6205 5977 50  0001 C CNN
F 2 "" H 6200 6150 50  0001 C CNN
F 3 "" H 6200 6150 50  0001 C CNN
	1    6200 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5BCBC5CB
P 7950 6150
F 0 "#PWR021" H 7950 5900 50  0001 C CNN
F 1 "GND" H 7955 5977 50  0001 C CNN
F 2 "" H 7950 6150 50  0001 C CNN
F 3 "" H 7950 6150 50  0001 C CNN
	1    7950 6150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5BCBDA50
P 7900 3650
F 0 "#PWR019" H 7900 3400 50  0001 C CNN
F 1 "GND" H 7905 3477 50  0001 C CNN
F 2 "" H 7900 3650 50  0001 C CNN
F 3 "" H 7900 3650 50  0001 C CNN
	1    7900 3650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BCBE834
P 1900 1300
F 0 "#PWR04" H 1900 1050 50  0001 C CNN
F 1 "GND" H 1905 1127 50  0001 C CNN
F 2 "" H 1900 1300 50  0001 C CNN
F 3 "" H 1900 1300 50  0001 C CNN
	1    1900 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5BCBFD1D
P 1900 1950
F 0 "#PWR05" H 1900 1700 50  0001 C CNN
F 1 "GND" H 1905 1777 50  0001 C CNN
F 2 "" H 1900 1950 50  0001 C CNN
F 3 "" H 1900 1950 50  0001 C CNN
	1    1900 1950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BCC0792
P 1900 2600
F 0 "#PWR06" H 1900 2350 50  0001 C CNN
F 1 "GND" H 1905 2427 50  0001 C CNN
F 2 "" H 1900 2600 50  0001 C CNN
F 3 "" H 1900 2600 50  0001 C CNN
	1    1900 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5BCC1207
P 1600 3500
F 0 "#PWR03" H 1600 3250 50  0001 C CNN
F 1 "GND" H 1605 3327 50  0001 C CNN
F 2 "" H 1600 3500 50  0001 C CNN
F 3 "" H 1600 3500 50  0001 C CNN
	1    1600 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5BCC1C7C
P 2000 3700
F 0 "#PWR07" H 2000 3450 50  0001 C CNN
F 1 "GND" H 2005 3527 50  0001 C CNN
F 2 "" H 2000 3700 50  0001 C CNN
F 3 "" H 2000 3700 50  0001 C CNN
	1    2000 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1200 7950 1200
$Comp
L power:GND #PWR017
U 1 1 5BCC294E
P 7650 1200
F 0 "#PWR017" H 7650 950 50  0001 C CNN
F 1 "GND" H 7655 1027 50  0001 C CNN
F 2 "" H 7650 1200 50  0001 C CNN
F 3 "" H 7650 1200 50  0001 C CNN
	1    7650 1200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5BCC336E
P 6850 2850
F 0 "#PWR015" H 6850 2600 50  0001 C CNN
F 1 "GND" H 6855 2677 50  0001 C CNN
F 2 "" H 6850 2850 50  0001 C CNN
F 3 "" H 6850 2850 50  0001 C CNN
	1    6850 2850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5BCC49A2
P 4350 5200
F 0 "#PWR011" H 4350 4950 50  0001 C CNN
F 1 "GND" H 4355 5027 50  0001 C CNN
F 2 "" H 4350 5200 50  0001 C CNN
F 3 "" H 4350 5200 50  0001 C CNN
	1    4350 5200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5BCC53C2
P 4350 5750
F 0 "#PWR012" H 4350 5500 50  0001 C CNN
F 1 "GND" H 4355 5577 50  0001 C CNN
F 2 "" H 4350 5750 50  0001 C CNN
F 3 "" H 4350 5750 50  0001 C CNN
	1    4350 5750
	1    0    0    -1  
$EndComp
$EndSCHEMATC
