EESchema Schematic File Version 4
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
L power:+5V #PWR?
U 1 1 5BBF0ED6
P 5050 1400
F 0 "#PWR?" H 5050 1250 50  0001 C CNN
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
F 1 "LED" V 6947 2133 50  0000 R CNN
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
F 1 "LED" V 6947 2633 50  0000 R CNN
F 2 "" H 7000 2750 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
