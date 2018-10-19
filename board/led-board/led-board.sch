EESchema Schematic File Version 4
LIBS:led-board-cache
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
L MCU_Texas_MSP430:MSP430G2553IN20 U2
U 1 1 5BC61AAB
P 5700 3200
F 0 "U2" H 5700 4178 50  0000 C CNN
F 1 "MSP430G2553IN20" H 5700 4087 50  0000 C CNN
F 2 "Package_DIP:DIP-20_W7.62mm" H 4250 2650 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/msp430g2553.pdf" H 5650 3200 50  0001 C CNN
	1    5700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:LED_RAGB D1
U 1 1 5BC61C33
P 9700 1800
F 0 "D1" V 9746 1470 50  0000 R CNN
F 1 "LED_ARGB" V 9655 1470 50  0000 R CNN
F 2 "LED_THT:LED_D5.0mm-4_RGB" H 9700 1750 50  0001 C CNN
F 3 "~" H 9700 1750 50  0001 C CNN
	1    9700 1800
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_FET:2N7000 Q1
U 1 1 5BC61E20
P 8750 2750
F 0 "Q1" H 8955 2796 50  0000 L CNN
F 1 "2N7000" H 8955 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 8950 2675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 8750 2750 50  0001 L CNN
	1    8750 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5BC61F18
P 8500 2950
F 0 "R2" H 8570 2996 50  0000 L CNN
F 1 "1M" H 8570 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8430 2950 50  0001 C CNN
F 3 "~" H 8500 2950 50  0001 C CNN
	1    8500 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5BC61F46
P 8850 2350
F 0 "R3" H 8920 2396 50  0000 L CNN
F 1 "470" H 8920 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8780 2350 50  0001 C CNN
F 3 "~" H 8850 2350 50  0001 C CNN
	1    8850 2350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5BC62224
P 1800 2250
F 0 "J2" H 1700 2250 50  0000 C CNN
F 1 "Pwr_In" H 1800 2350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 1800 2250 50  0001 C CNN
F 3 "~" H 1800 2250 50  0001 C CNN
	1    1800 2250
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5BC622DE
P 1500 3200
F 0 "J1" H 1400 3200 50  0000 C CNN
F 1 "UART_In" H 1600 3300 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Horizontal" H 1500 3200 50  0001 C CNN
F 3 "~" H 1500 3200 50  0001 C CNN
	1    1500 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J4
U 1 1 5BC623B2
P 2300 3200
F 0 "J4" H 2350 3200 50  0000 L CNN
F 1 "UART_Out" H 2100 3300 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Horizontal" H 2300 3200 50  0001 C CNN
F 3 "~" H 2300 3200 50  0001 C CNN
	1    2300 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female J3
U 1 1 5BC62427
P 2300 2250
F 0 "J3" H 2350 2250 50  0000 L CNN
F 1 "Pwr_Out" H 2150 2350 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Horizontal" H 2300 2250 50  0001 C CNN
F 3 "~" H 2300 2250 50  0001 C CNN
	1    2300 2250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:L78L33_TO92 U1
U 1 1 5BC62554
P 3750 1150
F 0 "U1" H 3750 1392 50  0000 C CNN
F 1 "L78L33_TO92" H 3750 1301 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 3750 1375 50  0001 C CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/15/55/e5/aa/23/5b/43/fd/CD00000446.pdf/files/CD00000446.pdf/jcr:content/translations/en.CD00000446.pdf" H 3750 1100 50  0001 C CNN
	1    3750 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5BC62704
P 3400 1350
F 0 "C1" H 3200 1400 50  0000 L CNN
F 1 "22uF" H 3100 1300 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 3438 1200 50  0001 C CNN
F 3 "~" H 3400 1350 50  0001 C CNN
	1    3400 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C2
U 1 1 5BC627AD
P 4100 1350
F 0 "C2" H 4215 1396 50  0000 L CNN
F 1 "0.1uF" H 4215 1305 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D3.0mm_W1.6mm_P2.50mm" H 4138 1200 50  0001 C CNN
F 3 "~" H 4100 1350 50  0001 C CNN
	1    4100 1350
	1    0    0    -1  
$EndComp
Text Label 3700 3000 0    50   ~ 0
RED
Text Label 3700 3300 0    50   ~ 0
GREEN
Wire Wire Line
	4000 3000 3700 3000
Wire Wire Line
	8850 2500 8850 2550
Wire Wire Line
	8500 2750 8550 2750
Text Label 8500 2450 3    50   ~ 0
RED
Connection ~ 8500 2750
$Comp
L Transistor_FET:2N7000 Q2
U 1 1 5BC63A9F
P 9600 2750
F 0 "Q2" H 9805 2796 50  0000 L CNN
F 1 "2N7000" H 9805 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 9800 2675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 9600 2750 50  0001 L CNN
	1    9600 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5BC63AA6
P 9350 2950
F 0 "R4" H 9420 2996 50  0000 L CNN
F 1 "1M" H 9420 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9280 2950 50  0001 C CNN
F 3 "~" H 9350 2950 50  0001 C CNN
	1    9350 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5BC63AAD
P 9700 2350
F 0 "R5" H 9770 2396 50  0000 L CNN
F 1 "470" H 9770 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 9630 2350 50  0001 C CNN
F 3 "~" H 9700 2350 50  0001 C CNN
	1    9700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2500 9700 2550
Wire Wire Line
	9350 2750 9400 2750
Text Label 9350 2450 3    50   ~ 0
GREEN
$Comp
L Transistor_FET:2N7000 Q3
U 1 1 5BC63BEC
P 10450 2750
F 0 "Q3" H 10655 2796 50  0000 L CNN
F 1 "2N7000" H 10655 2705 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 10650 2675 50  0001 L CIN
F 3 "https://www.fairchildsemi.com/datasheets/2N/2N7000.pdf" H 10450 2750 50  0001 L CNN
	1    10450 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5BC63BF3
P 10200 2950
F 0 "R6" H 10270 2996 50  0000 L CNN
F 1 "1M" H 10270 2905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10130 2950 50  0001 C CNN
F 3 "~" H 10200 2950 50  0001 C CNN
	1    10200 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5BC63BFA
P 10550 2350
F 0 "R7" H 10620 2396 50  0000 L CNN
F 1 "470" H 10620 2305 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 10480 2350 50  0001 C CNN
F 3 "~" H 10550 2350 50  0001 C CNN
	1    10550 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 2500 10550 2550
Wire Wire Line
	10200 2750 10250 2750
Text Label 10200 2450 3    50   ~ 0
BLUE
Wire Wire Line
	8500 2750 8500 2800
Connection ~ 9350 2750
Wire Wire Line
	10200 2800 10200 2750
Connection ~ 10200 2750
$Comp
L power:GND #PWR0104
U 1 1 5BC651A2
P 8850 3000
F 0 "#PWR0104" H 8850 2750 50  0001 C CNN
F 1 "GND" H 8855 2827 50  0000 C CNN
F 2 "" H 8850 3000 50  0001 C CNN
F 3 "" H 8850 3000 50  0001 C CNN
	1    8850 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5BC651DA
P 9700 3000
F 0 "#PWR0105" H 9700 2750 50  0001 C CNN
F 1 "GND" H 9705 2827 50  0000 C CNN
F 2 "" H 9700 3000 50  0001 C CNN
F 3 "" H 9700 3000 50  0001 C CNN
	1    9700 3000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5BC6520B
P 10550 3000
F 0 "#PWR0106" H 10550 2750 50  0001 C CNN
F 1 "GND" H 10555 2827 50  0000 C CNN
F 2 "" H 10550 3000 50  0001 C CNN
F 3 "" H 10550 3000 50  0001 C CNN
	1    10550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10550 2950 10550 3000
Wire Wire Line
	9700 2950 9700 3000
Wire Wire Line
	8850 2950 8850 3000
Wire Wire Line
	9500 2000 9500 2050
Wire Wire Line
	9500 2050 8850 2050
Wire Wire Line
	8850 2050 8850 2200
Wire Wire Line
	9900 2000 9900 2050
Wire Wire Line
	9900 2050 10550 2050
Wire Wire Line
	10550 2050 10550 2200
Wire Wire Line
	9700 2000 9700 2200
$Comp
L power:+5V #PWR0107
U 1 1 5BC663CD
P 9700 1550
F 0 "#PWR0107" H 9700 1400 50  0001 C CNN
F 1 "+5V" H 9715 1723 50  0000 C CNN
F 2 "" H 9700 1550 50  0001 C CNN
F 3 "" H 9700 1550 50  0001 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 1550 9700 1600
Text Label 7550 2900 2    50   ~ 0
RX
Text Label 7550 3000 2    50   ~ 0
TX
Wire Wire Line
	7550 3000 7400 3000
Wire Wire Line
	7400 2900 7550 2900
Wire Wire Line
	2000 2250 2050 2250
Wire Wire Line
	2000 2350 2050 2350
$Comp
L power:GND #PWR0109
U 1 1 5BC71E0B
P 2050 2400
F 0 "#PWR0109" H 2050 2150 50  0001 C CNN
F 1 "GND" H 2055 2227 50  0000 C CNN
F 2 "" H 2050 2400 50  0001 C CNN
F 3 "" H 2050 2400 50  0001 C CNN
	1    2050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2400 2050 2350
Connection ~ 2050 2350
Wire Wire Line
	2050 2350 2100 2350
$Comp
L power:+5V #PWR0110
U 1 1 5BC725D1
P 2050 2200
F 0 "#PWR0110" H 2050 2050 50  0001 C CNN
F 1 "+5V" H 2065 2373 50  0000 C CNN
F 2 "" H 2050 2200 50  0001 C CNN
F 3 "" H 2050 2200 50  0001 C CNN
	1    2050 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 2200 2050 2250
Connection ~ 2050 2250
Wire Wire Line
	2050 2250 2100 2250
Text Label 1850 3200 2    50   ~ 0
RX
Text Label 1950 3200 0    50   ~ 0
TX
Wire Wire Line
	1700 3200 1850 3200
Wire Wire Line
	1950 3200 2100 3200
Wire Wire Line
	1700 3300 2100 3300
Wire Wire Line
	3450 1150 3400 1150
Wire Wire Line
	3400 1150 3400 1200
Wire Wire Line
	3400 1500 3400 1550
Wire Wire Line
	3400 1550 3750 1550
Wire Wire Line
	3750 1550 3750 1450
Wire Wire Line
	3750 1550 4100 1550
Wire Wire Line
	4100 1550 4100 1500
Connection ~ 3750 1550
Wire Wire Line
	4100 1200 4100 1150
Wire Wire Line
	4100 1150 4050 1150
$Comp
L power:+5V #PWR0111
U 1 1 5BC7A7F8
P 3400 1100
F 0 "#PWR0111" H 3400 950 50  0001 C CNN
F 1 "+5V" H 3415 1273 50  0000 C CNN
F 2 "" H 3400 1100 50  0001 C CNN
F 3 "" H 3400 1100 50  0001 C CNN
	1    3400 1100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 5BC7A85A
P 4100 1100
F 0 "#PWR0112" H 4100 950 50  0001 C CNN
F 1 "+3.3V" H 4115 1273 50  0000 C CNN
F 2 "" H 4100 1100 50  0001 C CNN
F 3 "" H 4100 1100 50  0001 C CNN
	1    4100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 5BC7A967
P 3750 1600
F 0 "#PWR0113" H 3750 1350 50  0001 C CNN
F 1 "GND" H 3755 1427 50  0000 C CNN
F 2 "" H 3750 1600 50  0001 C CNN
F 3 "" H 3750 1600 50  0001 C CNN
	1    3750 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1600 3750 1550
Wire Wire Line
	3400 1150 3400 1100
Connection ~ 3400 1150
Wire Wire Line
	4100 1100 4100 1150
Connection ~ 4100 1150
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 5BC7E186
P 4950 1250
F 0 "J5" H 5056 1428 50  0000 C CNN
F 1 "Pgrm" H 5056 1337 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4950 1250 50  0001 C CNN
F 3 "~" H 4950 1250 50  0001 C CNN
	1    4950 1250
	1    0    0    -1  
$EndComp
Text Label 5400 1250 2    50   ~ 0
TEST
Text Label 5400 1350 2    50   ~ 0
RESET
Wire Wire Line
	5400 1350 5150 1350
Wire Wire Line
	5150 1250 5400 1250
Text Label 7600 2650 2    50   ~ 0
TEST
Text Label 3700 2750 0    50   ~ 0
RESET
Wire Wire Line
	3700 2750 3950 2750
Wire Wire Line
	7600 2650 7400 2650
$Comp
L Device:R R1
U 1 1 5BC84EDC
P 3950 2550
F 0 "R1" H 3750 2600 50  0000 L CNN
F 1 "10k" H 3750 2500 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3880 2550 50  0001 C CNN
F 3 "~" H 3950 2550 50  0001 C CNN
	1    3950 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5BC84FA0
P 3950 2350
F 0 "#PWR0114" H 3950 2200 50  0001 C CNN
F 1 "+3.3V" H 3965 2523 50  0000 C CNN
F 2 "" H 3950 2350 50  0001 C CNN
F 3 "" H 3950 2350 50  0001 C CNN
	1    3950 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2350 3950 2400
Wire Wire Line
	3950 2700 3950 2750
Connection ~ 3950 2750
Wire Wire Line
	3950 2750 4000 2750
$Comp
L power:+3.3V #PWR0115
U 1 1 5BC8992D
P 5700 2350
F 0 "#PWR0115" H 5700 2200 50  0001 C CNN
F 1 "+3.3V" H 5715 2523 50  0000 C CNN
F 2 "" H 5700 2350 50  0001 C CNN
F 3 "" H 5700 2350 50  0001 C CNN
	1    5700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2350 5700 2400
$Comp
L power:GND #PWR0116
U 1 1 5BC8AF2A
P 5700 4000
F 0 "#PWR0116" H 5700 3750 50  0001 C CNN
F 1 "GND" H 5705 3827 50  0000 C CNN
F 2 "" H 5700 4000 50  0001 C CNN
F 3 "" H 5700 4000 50  0001 C CNN
	1    5700 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 4000 5700 3950
Wire Wire Line
	9350 2800 9350 2750
$Comp
L power:GND #PWR0101
U 1 1 5BC938CC
P 10200 3150
F 0 "#PWR0101" H 10200 2900 50  0001 C CNN
F 1 "GND" H 10205 2977 50  0000 C CNN
F 2 "" H 10200 3150 50  0001 C CNN
F 3 "" H 10200 3150 50  0001 C CNN
	1    10200 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5BC93901
P 9350 3150
F 0 "#PWR0102" H 9350 2900 50  0001 C CNN
F 1 "GND" H 9355 2977 50  0000 C CNN
F 2 "" H 9350 3150 50  0001 C CNN
F 3 "" H 9350 3150 50  0001 C CNN
	1    9350 3150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5BC93936
P 8500 3150
F 0 "#PWR0103" H 8500 2900 50  0001 C CNN
F 1 "GND" H 8505 2977 50  0000 C CNN
F 2 "" H 8500 3150 50  0001 C CNN
F 3 "" H 8500 3150 50  0001 C CNN
	1    8500 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 3100 8500 3150
Wire Wire Line
	9350 3100 9350 3150
Wire Wire Line
	10200 3100 10200 3150
Wire Wire Line
	10200 2450 10200 2750
Wire Wire Line
	9350 2450 9350 2750
Wire Wire Line
	8500 2450 8500 2750
Text Label 7650 3400 2    50   ~ 0
BLUE
Wire Wire Line
	3700 3300 4000 3300
Wire Wire Line
	7400 3400 7650 3400
NoConn ~ 7400 3500
NoConn ~ 7400 3300
NoConn ~ 7400 3200
NoConn ~ 7400 3100
NoConn ~ 7400 2800
NoConn ~ 4000 3400
NoConn ~ 4000 3200
NoConn ~ 4000 3100
NoConn ~ 4000 2900
$EndSCHEMATC