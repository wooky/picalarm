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
L picalarm:PIC16F15344 U1
U 1 1 5BBF0E10
P 4200 2350
F 0 "U1" H 4200 3128 50  0000 C CNN
F 1 "PIC16F15344" H 4200 3037 50  0000 C CNN
F 2 "" H 4200 2350 50  0001 C CNN
F 3 "" H 4200 2350 50  0001 C CNN
	1    4200 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0101
U 1 1 5BBF0ED6
P 5050 1400
F 0 "#PWR0101" H 5050 1250 50  0001 C CNN
F 1 "+5V" H 5065 1573 50  0000 C CNN
F 2 "" H 5050 1400 50  0001 C CNN
F 3 "" H 5050 1400 50  0001 C CNN
	1    5050 1400
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U2
U 1 1 5BBF25B4
P 5700 2600
F 0 "U2" H 5700 3267 50  0000 C CNN
F 1 "7Segment" H 5700 3176 50  0000 C CNN
F 2 "7 segment display blue common cathode" H 5700 2000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-136(Ver.7B).pdf" H 5200 3075 50  0001 L CNN
	1    5700 2600
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U3
U 1 1 5BBF25EE
P 6500 2600
F 0 "U3" H 6500 3267 50  0000 C CNN
F 1 "7Segment" H 6500 3176 50  0000 C CNN
F 2 "7 segment display blue common cathode" H 6500 2000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-136(Ver.7B).pdf" H 6000 3075 50  0001 L CNN
	1    6500 2600
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U4
U 1 1 5BBF2634
P 7600 2600
F 0 "U4" H 7600 3267 50  0000 C CNN
F 1 "7Segment" H 7600 3176 50  0000 C CNN
F 2 "7 segment display blue common cathode" H 7600 2000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-136(Ver.7B).pdf" H 7100 3075 50  0001 L CNN
	1    7600 2600
	1    0    0    -1  
$EndComp
$Comp
L picalarm:7Segment U5
U 1 1 5BBF2668
P 8350 2600
F 0 "U5" H 8350 3267 50  0000 C CNN
F 1 "7Segment" H 8350 3176 50  0000 C CNN
F 2 "7 segment display blue common cathode" H 8350 2000 50  0001 C CNN
F 3 "http://www.kingbright.com/attachments/file/psearch/000/00/00/KCSA02-136(Ver.7B).pdf" H 7850 3075 50  0001 L CNN
	1    8350 2600
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 5BBF27FD
P 7000 2250
F 0 "D1" V 7038 2133 50  0000 R CNN
F 1 "Red LED" V 6947 2133 50  0000 R CNN
F 2 "" H 7000 2250 50  0001 C CNN
F 3 "~" H 7000 2250 50  0001 C CNN
	1    7000 2250
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D2
U 1 1 5BBF2869
P 7000 2750
F 0 "D2" V 7038 2633 50  0000 R CNN
F 1 "Red LED" V 6947 2633 50  0000 R CNN
F 2 "" H 7000 2750 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	0    -1   -1   0   
$EndComp
$Comp
L Device:Crystal X1
U 1 1 5BBF9C25
P 3100 3050
F 0 "X1" V 3146 2919 50  0000 R CNN
F 1 "32.768 KHz" V 3055 2919 50  0000 R CNN
F 2 "" H 3100 3050 50  0001 C CNN
F 3 "~" H 3100 3050 50  0001 C CNN
	1    3100 3050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5BBF9D43
P 2900 2800
F 0 "C2" V 3129 2800 50  0000 C CNN
F 1 "idk uF" V 3038 2800 50  0000 C CNN
F 2 "" H 2900 2800 50  0001 C CNN
F 3 "~" H 2900 2800 50  0001 C CNN
	1    2900 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5BBF9D83
P 2900 3300
F 0 "C1" V 3129 3300 50  0000 C CNN
F 1 "idk uF" V 3038 3300 50  0000 C CNN
F 2 "" H 2900 3300 50  0001 C CNN
F 3 "~" H 2900 3300 50  0001 C CNN
	1    2900 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 2800 3100 2800
Wire Wire Line
	3100 2800 3100 2900
Connection ~ 3100 2800
Wire Wire Line
	3100 2800 3550 2800
$Comp
L power:GNDREF #PWR0102
U 1 1 5BBFA1EA
P 2500 3150
F 0 "#PWR0102" H 2500 2900 50  0001 C CNN
F 1 "GNDREF" H 2505 2977 50  0001 C CNN
F 2 "" H 2500 3150 50  0001 C CNN
F 3 "" H 2500 3150 50  0001 C CNN
	1    2500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3150 2500 3050
Wire Wire Line
	2500 3050 2700 3050
Connection ~ 2700 3050
Wire Wire Line
	2700 3050 2700 2800
$Comp
L Switch:SW_SPDT SW4
U 1 1 5BBFA913
P 1450 2850
F 0 "SW4" H 1450 2525 50  0000 C CNN
F 1 "Alarm On" H 1450 2616 50  0000 C CNN
F 2 "" H 1450 2850 50  0001 C CNN
F 3 "" H 1450 2850 50  0001 C CNN
	1    1450 2850
	-1   0    0    1   
$EndComp
$Comp
L power:GNDREF #PWR0103
U 1 1 5BBFAC09
P 4200 3350
F 0 "#PWR0103" H 4200 3100 50  0001 C CNN
F 1 "GNDREF" H 4205 3177 50  0001 C CNN
F 2 "" H 4200 3350 50  0001 C CNN
F 3 "" H 4200 3350 50  0001 C CNN
	1    4200 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 3300 2700 3050
Wire Wire Line
	3550 2900 3550 3300
Wire Wire Line
	3000 3300 3100 3300
Wire Wire Line
	3100 3200 3100 3300
Connection ~ 3100 3300
Wire Wire Line
	3100 3300 3550 3300
Wire Wire Line
	2700 3300 2800 3300
Wire Wire Line
	2800 2800 2700 2800
$Comp
L Device:LED D3
U 1 1 5BBFC348
P 1000 2950
F 0 "D3" H 991 3166 50  0000 C CNN
F 1 "Red LED" H 991 3075 50  0000 C CNN
F 2 "" H 1000 2950 50  0001 C CNN
F 3 "~" H 1000 2950 50  0001 C CNN
	1    1000 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:Buzzer BZ1
U 1 1 5BBFC3D9
P 4700 3600
F 0 "BZ1" H 4853 3629 50  0000 L CNN
F 1 "Buzzer" H 4853 3538 50  0000 L CNN
F 2 "" V 4675 3700 50  0001 C CNN
F 3 "~" V 4675 3700 50  0001 C CNN
	1    4700 3600
	1    0    0    -1  
$EndComp
$Comp
L 1825910-6:1825910-6 SW1
U 1 1 5BBFCCCB
P 1450 1000
F 0 "SW1" H 1450 1365 50  0000 C CNN
F 1 "Hour" H 1450 1274 50  0000 C CNN
F 2 "SW_1825910-6-4" H 1450 1000 50  0001 L BNN
F 3 "1825910-6" H 1450 1000 50  0001 L BNN
F 4 "FSM4JH=6MM TACT SWITCH, HIGH TEMP" H 1450 1000 50  0001 L BNN "Field4"
F 5 "1825910-6" H 1450 1000 50  0001 L BNN "Field5"
F 6 "http://www.te.com/usa-en/product-1825910-6.html" H 1450 1000 50  0001 L BNN "Field6"
F 7 "Compliant" H 1450 1000 50  0001 L BNN "Field7"
F 8 "50 mA" H 1450 1000 50  0001 L BNN "Field8"
F 9 "450-1650-ND" H 1450 1000 50  0001 L BNN "Field9"
F 10 "https://www.digikey.ca/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 1450 1000 50  0001 L BNN "Field10"
F 11 "Single Pole - Single Throw" H 1450 1000 50  0001 L BNN "Field11"
F 12 "TE Connectivity" H 1450 1000 50  0001 L BNN "Field12"
F 13 "None" H 1450 1000 50  0001 L BNN "Field13"
	1    1450 1000
	1    0    0    -1  
$EndComp
$Comp
L 1825910-6:1825910-6 SW2
U 1 1 5BBFCD93
P 1450 1600
F 0 "SW2" H 1450 1965 50  0000 C CNN
F 1 "Minute" H 1450 1874 50  0000 C CNN
F 2 "SW_1825910-6-4" H 1450 1600 50  0001 L BNN
F 3 "1825910-6" H 1450 1600 50  0001 L BNN
F 4 "FSM4JH=6MM TACT SWITCH, HIGH TEMP" H 1450 1600 50  0001 L BNN "Field4"
F 5 "1825910-6" H 1450 1600 50  0001 L BNN "Field5"
F 6 "http://www.te.com/usa-en/product-1825910-6.html" H 1450 1600 50  0001 L BNN "Field6"
F 7 "Compliant" H 1450 1600 50  0001 L BNN "Field7"
F 8 "50 mA" H 1450 1600 50  0001 L BNN "Field8"
F 9 "450-1650-ND" H 1450 1600 50  0001 L BNN "Field9"
F 10 "https://www.digikey.ca/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 1450 1600 50  0001 L BNN "Field10"
F 11 "Single Pole - Single Throw" H 1450 1600 50  0001 L BNN "Field11"
F 12 "TE Connectivity" H 1450 1600 50  0001 L BNN "Field12"
F 13 "None" H 1450 1600 50  0001 L BNN "Field13"
	1    1450 1600
	1    0    0    -1  
$EndComp
$Comp
L 1825910-6:1825910-6 SW3
U 1 1 5BBFCE47
P 1450 2250
F 0 "SW3" H 1450 2615 50  0000 C CNN
F 1 "Alarm Set" H 1450 2524 50  0000 C CNN
F 2 "SW_1825910-6-4" H 1450 2250 50  0001 L BNN
F 3 "1825910-6" H 1450 2250 50  0001 L BNN
F 4 "FSM4JH=6MM TACT SWITCH, HIGH TEMP" H 1450 2250 50  0001 L BNN "Field4"
F 5 "1825910-6" H 1450 2250 50  0001 L BNN "Field5"
F 6 "http://www.te.com/usa-en/product-1825910-6.html" H 1450 2250 50  0001 L BNN "Field6"
F 7 "Compliant" H 1450 2250 50  0001 L BNN "Field7"
F 8 "50 mA" H 1450 2250 50  0001 L BNN "Field8"
F 9 "450-1650-ND" H 1450 2250 50  0001 L BNN "Field9"
F 10 "https://www.digikey.ca/product-detail/en/te-connectivity-alcoswitch-switches/1825910-6/450-1650-ND/1632536?utm_source=snapeda&utm_medium=aggregator&utm_campaign=symbol" H 1450 2250 50  0001 L BNN "Field10"
F 11 "Single Pole - Single Throw" H 1450 2250 50  0001 L BNN "Field11"
F 12 "TE Connectivity" H 1450 2250 50  0001 L BNN "Field12"
F 13 "None" H 1450 2250 50  0001 L BNN "Field13"
	1    1450 2250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
