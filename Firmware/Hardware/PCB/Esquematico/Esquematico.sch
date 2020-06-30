EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Esquematico control "
Date "2020-06-08"
Rev "V: 1.0"
Comp "Universidad Nacional De Colombia"
Comment1 ""
Comment2 "licences : "
Comment3 "powered by Datalica"
Comment4 "Autor : Johan Andrés Ramírez Ramos"
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v2.x Control_CF1
U 1 1 5EDEA158
P 6050 2450
F 0 "Control_CF1" H 6500 1500 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" H 6650 1400 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6050 2450 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6050 2450 50  0001 C CNN
	1    6050 2450
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:WeMos_D1_mini SCADA1
U 1 1 5EDEA98F
P 9200 2300
F 0 "SCADA1" H 9500 1550 50  0000 C CNN
F 1 "WeMos_D1_mini" H 9650 1450 50  0001 C CNN
F 2 "Module:WEMOS_D1_mini_light" H 9200 1150 50  0001 C CNN
F 3 "https://wiki.wemos.cc/products:d1:d1_mini#documentation" H 7350 1150 50  0001 C CNN
	1    9200 2300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003A ULN_Led1
U 1 1 5EDF3336
P 3550 5600
F 0 "ULN_Led1" H 3550 6267 50  0000 C CNN
F 1 "ULN2003A" H 3550 6176 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 3600 5050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 3650 5400 50  0001 C CNN
	1    3550 5600
	1    0    0    -1  
$EndComp
Text GLabel 4800 5450 0    50   Input ~ 0
S_Ven2
$Comp
L power:GND #PWR0101
U 1 1 5EDFF173
P 5200 6250
F 0 "#PWR0101" H 5200 6000 50  0001 C CNN
F 1 "GND" H 5205 6077 50  0000 C CNN
F 2 "" H 5200 6250 50  0001 C CNN
F 3 "" H 5200 6250 50  0001 C CNN
	1    5200 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5EE01824
P 3550 6200
F 0 "#PWR0102" H 3550 5950 50  0001 C CNN
F 1 "GND" H 3555 6027 50  0000 C CNN
F 2 "" H 3550 6200 50  0001 C CNN
F 3 "" H 3550 6200 50  0001 C CNN
	1    3550 6200
	1    0    0    -1  
$EndComp
Text GLabel 3150 5500 0    50   Input ~ 0
S_Luz
Text GLabel 5550 2150 0    50   Input ~ 0
S_Luz
Text GLabel 5550 2050 0    50   Input ~ 0
S_calentador
Text Notes 5100 3400 0    50   ~ 0
*S_ : Señal\n
Text GLabel 5550 1850 0    50   Input ~ 0
Rx_CF
Text GLabel 5550 1950 0    50   Input ~ 0
Tx_CF
Text GLabel 9600 2200 2    50   Input ~ 0
Rx_CF
Text GLabel 9600 2300 2    50   Input ~ 0
Tx_CF
$Comp
L power:GND #PWR0103
U 1 1 5EE1CB94
P 9200 3100
F 0 "#PWR0103" H 9200 2850 50  0001 C CNN
F 1 "GND" H 9205 2927 50  0000 C CNN
F 2 "" H 9200 3100 50  0001 C CNN
F 3 "" H 9200 3100 50  0001 C CNN
	1    9200 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5EE1F371
P 6150 3450
F 0 "#PWR0104" H 6150 3200 50  0001 C CNN
F 1 "GND" H 6200 3300 50  0000 C CNN
F 2 "" H 6150 3450 50  0001 C CNN
F 3 "" H 6150 3450 50  0001 C CNN
	1    6150 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 5EE1F4BD
P 6050 3450
F 0 "#PWR0105" H 6050 3200 50  0001 C CNN
F 1 "GND" H 6000 3300 50  0000 C CNN
F 2 "" H 6050 3450 50  0001 C CNN
F 3 "" H 6050 3450 50  0001 C CNN
	1    6050 3450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5EE1F963
P 9100 1500
F 0 "#PWR0106" H 9100 1350 50  0001 C CNN
F 1 "+5V" H 9115 1673 50  0000 C CNN
F 2 "" H 9100 1500 50  0001 C CNN
F 3 "" H 9100 1500 50  0001 C CNN
	1    9100 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0107
U 1 1 5EE20B9E
P 5950 1450
F 0 "#PWR0107" H 5950 1300 50  0001 C CNN
F 1 "+5V" H 5965 1623 50  0000 C CNN
F 2 "" H 5950 1450 50  0001 C CNN
F 3 "" H 5950 1450 50  0001 C CNN
	1    5950 1450
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0109
U 1 1 5EE26E72
P 3950 5200
F 0 "#PWR0109" H 3950 5050 50  0001 C CNN
F 1 "+12V" H 3965 5373 50  0000 C CNN
F 2 "" H 3950 5200 50  0001 C CNN
F 3 "" H 3950 5200 50  0001 C CNN
	1    3950 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female 5V_plug1
U 1 1 5EE3EEFA
P 1650 1300
F 0 "5V_plug1" H 1678 1230 50  0000 L CNN
F 1 "Conn_01x02_Female" H 1678 1185 50  0001 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 1650 1300 50  0001 C CNN
F 3 "~" H 1650 1300 50  0001 C CNN
	1    1650 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Female 12V_plug1
U 1 1 5EE3FB73
P 2950 1300
F 0 "12V_plug1" H 2978 1230 50  0000 L CNN
F 1 "Conn_01x02_Female" H 2978 1185 50  0001 L CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 2950 1300 50  0001 C CNN
F 3 "~" H 2950 1300 50  0001 C CNN
	1    2950 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5EE4117B
P 1450 1400
F 0 "#PWR0110" H 1450 1150 50  0001 C CNN
F 1 "GND" H 1455 1227 50  0000 C CNN
F 2 "" H 1450 1400 50  0001 C CNN
F 3 "" H 1450 1400 50  0001 C CNN
	1    1450 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 5EE41739
P 2750 1400
F 0 "#PWR0111" H 2750 1150 50  0001 C CNN
F 1 "GND" H 2755 1227 50  0000 C CNN
F 2 "" H 2750 1400 50  0001 C CNN
F 3 "" H 2750 1400 50  0001 C CNN
	1    2750 1400
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0112
U 1 1 5EE41C9F
P 2750 1300
F 0 "#PWR0112" H 2750 1150 50  0001 C CNN
F 1 "+12V" H 2765 1473 50  0000 C CNN
F 2 "" H 2750 1300 50  0001 C CNN
F 3 "" H 2750 1300 50  0001 C CNN
	1    2750 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0113
U 1 1 5EE423B2
P 1450 1300
F 0 "#PWR0113" H 1450 1150 50  0001 C CNN
F 1 "+5V" H 1465 1473 50  0000 C CNN
F 2 "" H 1450 1300 50  0001 C CNN
F 3 "" H 1450 1300 50  0001 C CNN
	1    1450 1300
	1    0    0    -1  
$EndComp
Text GLabel 5550 2550 0    50   Input ~ 0
S_Motor2
Text GLabel 5550 2850 0    50   Input ~ 0
S_DHT
Text GLabel 5550 2650 0    50   Input ~ 0
S_HS2
Text GLabel 5550 2450 0    50   Input ~ 0
S_Motor1
Text GLabel 5550 2750 0    50   Input ~ 0
S_HS1
$Comp
L Transistor_Array:ULN2003A ULN_Sensores_y_Motores1
U 1 1 5EE851E1
P 2400 3350
F 0 "ULN_Sensores_y_Motores1" H 2400 4017 50  0000 C CNN
F 1 "ULN2003A" H 2400 3926 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 2450 2800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 2500 3150 50  0001 C CNN
	1    2400 3350
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:ULN2003A ULN_Calentador1
U 1 1 5EE851E7
P 1900 5600
F 0 "ULN_Calentador1" H 1900 6267 50  0000 C CNN
F 1 "ULN2003A" H 1900 6176 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 1950 5050 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 2000 5400 50  0001 C CNN
	1    1900 5600
	1    0    0    -1  
$EndComp
Text GLabel 2000 3250 0    50   Input ~ 0
S_HS1
Text GLabel 2000 3750 0    50   Input ~ 0
S_Motor1
Text GLabel 2000 3150 0    50   Input ~ 0
S_HS2
Text GLabel 2000 3350 0    50   Input ~ 0
S_DHT
Text GLabel 2000 3450 0    50   Input ~ 0
S_Motor2
$Comp
L power:GND #PWR0108
U 1 1 5EE851F4
P 2400 3950
F 0 "#PWR0108" H 2400 3700 50  0001 C CNN
F 1 "GND" H 2405 3777 50  0000 C CNN
F 2 "" H 2400 3950 50  0001 C CNN
F 3 "" H 2400 3950 50  0001 C CNN
	1    2400 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 5EE851FA
P 1900 6200
F 0 "#PWR0114" H 1900 5950 50  0001 C CNN
F 1 "GND" H 1905 6027 50  0000 C CNN
F 2 "" H 1900 6200 50  0001 C CNN
F 3 "" H 1900 6200 50  0001 C CNN
	1    1900 6200
	1    0    0    -1  
$EndComp
Text GLabel 1500 5400 0    50   Input ~ 0
S_calentador
$Comp
L power:+5V #PWR0115
U 1 1 5EE85202
P 2800 2950
F 0 "#PWR0115" H 2800 2800 50  0001 C CNN
F 1 "+5V" H 2815 3123 50  0000 C CNN
F 2 "" H 2800 2950 50  0001 C CNN
F 3 "" H 2800 2950 50  0001 C CNN
	1    2800 2950
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0116
U 1 1 5EE85208
P 2300 5200
F 0 "#PWR0116" H 2300 5050 50  0001 C CNN
F 1 "+12V" H 2315 5373 50  0000 C CNN
F 2 "" H 2300 5200 50  0001 C CNN
F 3 "" H 2300 5200 50  0001 C CNN
	1    2300 5200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Female Sensor_HS1
U 1 1 5EEF4746
P 5300 7050
F 0 "Sensor_HS1" V 5238 6862 50  0000 R CNN
F 1 "Conn_01x03_Female" V 5147 6862 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5300 7050 50  0001 C CNN
F 3 "~" H 5300 7050 50  0001 C CNN
	1    5300 7050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Female Sensor_HS2
U 1 1 5EEF5EB0
P 4100 7050
F 0 "Sensor_HS2" V 4038 6862 50  0000 R CNN
F 1 "Conn_01x03_Female" V 3947 6862 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 4100 7050 50  0001 C CNN
F 3 "~" H 4100 7050 50  0001 C CNN
	1    4100 7050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Female Sensor_DHT1
U 1 1 5EEF655B
P 2900 7050
F 0 "Sensor_DHT1" V 2838 6862 50  0000 R CNN
F 1 "Conn_01x03_Female" V 2747 6862 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 2900 7050 50  0001 C CNN
F 3 "~" H 2900 7050 50  0001 C CNN
	1    2900 7050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Female Sensor_DHT2
U 1 1 5EEF6CE9
P 1650 7050
F 0 "Sensor_DHT2" V 1588 6862 50  0000 R CNN
F 1 "Conn_01x03_Female" V 1497 6862 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 1650 7050 50  0001 C CNN
F 3 "~" H 1650 7050 50  0001 C CNN
	1    1650 7050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female Motobomba1
U 1 1 5EF0374E
P 7650 5050
F 0 "Motobomba1" V 7588 4862 50  0000 R CNN
F 1 "Conn_01x02_Female" V 7497 4862 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7650 5050 50  0001 C CNN
F 3 "~" H 7650 5050 50  0001 C CNN
	1    7650 5050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female Motobomba2
U 1 1 5EF04042
P 8750 5050
F 0 "Motobomba2" V 8688 4862 50  0000 R CNN
F 1 "Conn_01x02_Female" V 8597 4862 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 8750 5050 50  0001 C CNN
F 3 "~" H 8750 5050 50  0001 C CNN
	1    8750 5050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female Luz1
U 1 1 5EF04B22
P 9900 5050
F 0 "Luz1" V 9838 4862 50  0000 R CNN
F 1 "Conn_01x02_Female" V 9747 4862 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 9900 5050 50  0001 C CNN
F 3 "~" H 9900 5050 50  0001 C CNN
	1    9900 5050
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female Ventilador1
U 1 1 5EF05370
P 7650 5800
F 0 "Ventilador1" V 7588 5612 50  0000 R CNN
F 1 "Conn_01x02_Female" V 7497 5612 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 7650 5800 50  0001 C CNN
F 3 "~" H 7650 5800 50  0001 C CNN
	1    7650 5800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female Ventilador2
U 1 1 5EF05B0C
P 8750 5800
F 0 "Ventilador2" V 8688 5612 50  0000 R CNN
F 1 "Conn_01x02_Female" V 8597 5612 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 8750 5800 50  0001 C CNN
F 3 "~" H 8750 5800 50  0001 C CNN
	1    8750 5800
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x02_Female Calentador1
U 1 1 5EF06335
P 9850 5800
F 0 "Calentador1" V 9788 5612 50  0000 R CNN
F 1 "Conn_01x02_Female" V 9697 5612 50  0001 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 9850 5800 50  0001 C CNN
F 3 "~" H 9850 5800 50  0001 C CNN
	1    9850 5800
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0117
U 1 1 5EF508EF
P 9900 5250
F 0 "#PWR0117" H 9900 5100 50  0001 C CNN
F 1 "+12V" H 9915 5423 50  0000 C CNN
F 2 "" H 9900 5250 50  0001 C CNN
F 3 "" H 9900 5250 50  0001 C CNN
	1    9900 5250
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0118
U 1 1 5EF51283
P 9850 6000
F 0 "#PWR0118" H 9850 5850 50  0001 C CNN
F 1 "+12V" H 9865 6173 50  0000 C CNN
F 2 "" H 9850 6000 50  0001 C CNN
F 3 "" H 9850 6000 50  0001 C CNN
	1    9850 6000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0119
U 1 1 5EF516B4
P 8750 6000
F 0 "#PWR0119" H 8750 5850 50  0001 C CNN
F 1 "+12V" H 8765 6173 50  0000 C CNN
F 2 "" H 8750 6000 50  0001 C CNN
F 3 "" H 8750 6000 50  0001 C CNN
	1    8750 6000
	-1   0    0    1   
$EndComp
$Comp
L power:+12V #PWR0120
U 1 1 5EF51CC8
P 7650 6000
F 0 "#PWR0120" H 7650 5850 50  0001 C CNN
F 1 "+12V" H 7665 6173 50  0000 C CNN
F 2 "" H 7650 6000 50  0001 C CNN
F 3 "" H 7650 6000 50  0001 C CNN
	1    7650 6000
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0121
U 1 1 5EF52323
P 7650 5250
F 0 "#PWR0121" H 7650 5100 50  0001 C CNN
F 1 "+5V" H 7665 5423 50  0000 C CNN
F 2 "" H 7650 5250 50  0001 C CNN
F 3 "" H 7650 5250 50  0001 C CNN
	1    7650 5250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0122
U 1 1 5EF527E3
P 8750 5250
F 0 "#PWR0122" H 8750 5100 50  0001 C CNN
F 1 "+5V" H 8765 5423 50  0000 C CNN
F 2 "" H 8750 5250 50  0001 C CNN
F 3 "" H 8750 5250 50  0001 C CNN
	1    8750 5250
	-1   0    0    1   
$EndComp
Text GLabel 7750 5350 2    50   Input ~ 0
Act_m1
Text GLabel 8850 5350 2    50   Input ~ 0
Act_m2
Text GLabel 10000 5350 2    50   Input ~ 0
Act_luz
Text GLabel 9950 6100 2    50   Input ~ 0
Act_calentador
Text GLabel 8850 6100 2    50   Input ~ 0
Act_v2
Text GLabel 7750 6100 2    50   Input ~ 0
Act_v1
Wire Wire Line
	7750 5250 7750 5350
Wire Wire Line
	8850 5250 8850 5350
Wire Wire Line
	10000 5250 10000 5350
Wire Wire Line
	7750 6000 7750 6100
Wire Wire Line
	8850 6000 8850 6100
Wire Wire Line
	9950 6100 9950 6000
Text GLabel 5300 7600 0    50   Input ~ 0
Signa_HS1
Text GLabel 4050 7600 0    50   Input ~ 0
Signa_HS2
Text GLabel 2900 7600 2    50   Input ~ 0
Signa_DHT1
Text GLabel 1650 7600 2    50   Input ~ 0
Signa_DHT2
Wire Wire Line
	4100 7600 4050 7600
$Comp
L Device:R R_DHT1
U 1 1 5EF9A8BB
P 1500 7450
F 0 "R_DHT1" V 1600 7300 50  0000 L CNN
F 1 "10K" V 1400 7350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1430 7450 50  0001 C CNN
F 3 "~" H 1500 7450 50  0001 C CNN
	1    1500 7450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1500 5400 1500 5500
Connection ~ 1500 5500
Wire Wire Line
	1500 5500 1500 5600
Connection ~ 1500 5600
Wire Wire Line
	1500 5600 1500 5700
Connection ~ 1500 5700
Wire Wire Line
	1500 5700 1500 5800
Connection ~ 1500 5800
Wire Wire Line
	1500 5800 1500 5900
Connection ~ 1500 5900
Wire Wire Line
	1500 5900 1500 6000
Wire Wire Line
	3150 5400 3150 5500
Connection ~ 3150 5500
Wire Wire Line
	3150 5500 3150 5600
Connection ~ 3150 5600
Wire Wire Line
	3150 5600 3150 5700
Connection ~ 3150 5700
Wire Wire Line
	3150 5700 3150 5800
Connection ~ 3150 5800
Wire Wire Line
	3150 5800 3150 5900
Connection ~ 3150 5900
Wire Wire Line
	3150 5900 3150 6000
Wire Wire Line
	2300 5400 2300 5500
Connection ~ 2300 5500
Wire Wire Line
	2300 5500 2300 5600
Connection ~ 2300 5600
Wire Wire Line
	2300 5600 2300 5700
Connection ~ 2300 5700
Wire Wire Line
	2300 5700 2300 5800
Connection ~ 2300 5800
Wire Wire Line
	2300 5800 2300 5900
Connection ~ 2300 5900
Wire Wire Line
	2300 5900 2300 6000
Wire Wire Line
	3950 5400 3950 5500
Connection ~ 3950 5500
Wire Wire Line
	3950 5500 3950 5600
Connection ~ 3950 5600
Wire Wire Line
	3950 5600 3950 5700
Connection ~ 3950 5700
Wire Wire Line
	3950 5700 3950 5800
Connection ~ 3950 5800
Wire Wire Line
	3950 5800 3950 5900
Connection ~ 3950 5900
Wire Wire Line
	3950 5900 3950 6000
Text GLabel 2300 5800 2    50   Input ~ 0
Act_calentador
Text GLabel 3950 5500 2    50   Input ~ 0
Act_luz
Text GLabel 4800 5850 0    50   Input ~ 0
S_Ven1
Wire Wire Line
	4800 5850 4800 5950
Wire Wire Line
	4800 5750 4800 5850
Connection ~ 4800 5850
Wire Wire Line
	4800 5550 4800 5450
Wire Wire Line
	4800 5650 4800 5550
Connection ~ 4800 5550
Wire Wire Line
	5600 5550 5600 5650
Wire Wire Line
	5600 5450 5600 5550
Connection ~ 5600 5550
Wire Wire Line
	5600 5850 5600 5950
Wire Wire Line
	5600 5750 5600 5850
Connection ~ 5600 5850
$Comp
L Transistor_Array:ULN2003A ULN_Ventilador1
U 1 1 5EDF2731
P 5200 5650
F 0 "ULN_Ventilador1" H 5200 6317 50  0000 C CNN
F 1 "ULN2003A" H 5200 6226 50  0000 C CNN
F 2 "Package_DIP:DIP-16_W7.62mm_LongPads" H 5250 5100 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 5300 5450 50  0001 C CNN
	1    5200 5650
	1    0    0    -1  
$EndComp
$Comp
L power:+12V #PWR0123
U 1 1 5EFD9E4C
P 5600 5250
F 0 "#PWR0123" H 5600 5100 50  0001 C CNN
F 1 "+12V" H 5615 5423 50  0000 C CNN
F 2 "" H 5600 5250 50  0001 C CNN
F 3 "" H 5600 5250 50  0001 C CNN
	1    5600 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 3550 2000 3450
Wire Wire Line
	2000 3650 2000 3750
Wire Wire Line
	5400 7250 5400 7350
Wire Wire Line
	5300 7250 5300 7600
Wire Wire Line
	4100 7250 4100 7600
Wire Wire Line
	4200 7250 4200 7350
Wire Wire Line
	3000 7250 3000 7350
Wire Wire Line
	2900 7250 2900 7450
Wire Wire Line
	1650 7250 1650 7450
Wire Wire Line
	1750 7250 1750 7350
Text GLabel 5400 7350 2    50   Input ~ 0
Act_HS1
Text GLabel 4200 7350 2    50   Input ~ 0
Act_HS2
Text GLabel 3000 7350 2    50   Input ~ 0
Act_DHT
Text GLabel 1750 7350 2    50   Input ~ 0
Act_DHT
$Comp
L power:+5V #PWR0124
U 1 1 5EF7A198
P 5200 7250
F 0 "#PWR0124" H 5200 7100 50  0001 C CNN
F 1 "+5V" H 5215 7423 50  0000 C CNN
F 2 "" H 5200 7250 50  0001 C CNN
F 3 "" H 5200 7250 50  0001 C CNN
	1    5200 7250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0125
U 1 1 5EF79DF8
P 4000 7250
F 0 "#PWR0125" H 4000 7100 50  0001 C CNN
F 1 "+5V" H 4015 7423 50  0000 C CNN
F 2 "" H 4000 7250 50  0001 C CNN
F 3 "" H 4000 7250 50  0001 C CNN
	1    4000 7250
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0126
U 1 1 5EF799AA
P 2600 7550
F 0 "#PWR0126" H 2600 7400 50  0001 C CNN
F 1 "+5V" H 2615 7723 50  0000 C CNN
F 2 "" H 2600 7550 50  0001 C CNN
F 3 "" H 2600 7550 50  0001 C CNN
	1    2600 7550
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0127
U 1 1 5EF79074
P 1350 7550
F 0 "#PWR0127" H 1350 7400 50  0001 C CNN
F 1 "+5V" H 1365 7723 50  0000 C CNN
F 2 "" H 1350 7550 50  0001 C CNN
F 3 "" H 1350 7550 50  0001 C CNN
	1    1350 7550
	-1   0    0    1   
$EndComp
Text GLabel 2800 3150 2    50   Input ~ 0
Act_HS2
Text GLabel 2800 3350 2    50   Input ~ 0
Act_DHT
Text GLabel 2800 3450 2    50   Input ~ 0
Act_m2
Text GLabel 2800 3650 2    50   Input ~ 0
Act_m1
Wire Wire Line
	2800 3550 2800 3450
Wire Wire Line
	2800 3750 2800 3650
Text GLabel 5600 5850 2    50   Input ~ 0
Act_v1
Text GLabel 5600 5550 2    50   Input ~ 0
Act_v2
Text GLabel 6550 3150 2    50   Input ~ 0
Signa_HS1
Text GLabel 6550 3050 2    50   Input ~ 0
Signa_HS2
Text GLabel 5550 3050 0    50   Input ~ 0
Signa_DHT1
Text GLabel 5550 3150 0    50   Input ~ 0
Signa_DHT2
Text Notes 1700 850  0    138  ~ 0
Alimentación
Text Notes 1850 4700 0    138  ~ 0
Fase potencia Actuadores 12 V\n
Text Notes 5100 1000 0    138  ~ 0
Control Capa fisica\n
Wire Notes Line
	450  6550 7050 6550
Text Notes 2300 6800 0    138  Italic 0
Conectores sensores\n
Wire Notes Line
	6950 6550 6950 4350
Wire Notes Line
	450  4350 450  4400
Text Notes 8600 1050 0    138  ~ 0
control Gateway\n
Text Notes 7650 4650 0    138  Italic 0
Conectores de actuadores\n
Wire Notes Line
	7900 500  7900 4350
Wire Notes Line
	450  4350 11200 4350
Wire Notes Line
	4350 500  4350 4350
Text Notes 900  2400 0    138  Italic 0
Fase de potencia sensores \n      y actuadores 5V
Wire Notes Line
	500  1800 4350 1800
Connection ~ 1650 7450
Wire Wire Line
	1650 7450 1650 7600
Wire Wire Line
	1550 7250 1350 7250
Wire Wire Line
	1350 7250 1350 7450
Wire Wire Line
	1350 7550 1350 7450
Connection ~ 1350 7450
$Comp
L Device:R R_DHT2
U 1 1 5F2ADB53
P 2750 7450
F 0 "R_DHT2" V 2850 7300 50  0000 L CNN
F 1 "10K" V 2650 7350 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2680 7450 50  0001 C CNN
F 3 "~" H 2750 7450 50  0001 C CNN
	1    2750 7450
	0    -1   -1   0   
$EndComp
Connection ~ 2900 7450
Wire Wire Line
	2900 7450 2900 7600
Wire Wire Line
	2800 7250 2600 7250
Wire Wire Line
	2600 7250 2600 7450
Connection ~ 2600 7450
Wire Wire Line
	2600 7450 2600 7550
Text GLabel 2800 3250 2    50   Input ~ 0
Act_HS1
Text GLabel 5550 2350 0    50   Input ~ 0
S_Ven2
Text GLabel 5550 2250 0    50   Input ~ 0
S_Ven1
$EndSCHEMATC
