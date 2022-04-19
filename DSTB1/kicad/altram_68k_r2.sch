EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "David's ST Booster 1"
Date "2022-04-19"
Rev "2"
Comp "D Henderson"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Entry Wire Line
	12250 2600 12350 2500
Entry Wire Line
	12250 2700 12350 2600
Entry Wire Line
	12250 2900 12350 2800
Entry Wire Line
	12250 2800 12350 2700
Wire Wire Line
	11650 1400 12250 1400
Wire Wire Line
	12250 1500 11650 1500
Wire Wire Line
	11650 1600 12250 1600
Wire Wire Line
	12250 1700 11650 1700
Entry Wire Line
	12250 1400 12350 1300
Entry Wire Line
	12250 1500 12350 1400
Entry Wire Line
	12250 1700 12350 1600
Entry Wire Line
	12250 1800 12350 1700
Entry Wire Line
	12250 1900 12350 1800
Entry Wire Line
	12250 2000 12350 1900
Entry Wire Line
	12250 2100 12350 2000
Entry Wire Line
	12250 2200 12350 2100
Entry Wire Line
	12250 2300 12350 2200
Entry Wire Line
	12250 1600 12350 1500
Entry Wire Line
	12250 2400 12350 2300
Entry Wire Line
	12250 2500 12350 2400
Wire Wire Line
	12250 1800 11650 1800
Wire Wire Line
	11650 1900 12250 1900
Wire Wire Line
	12250 2000 11650 2000
Wire Wire Line
	11650 2100 12250 2100
Wire Wire Line
	12250 2200 11650 2200
Wire Wire Line
	11650 2300 12250 2300
Wire Wire Line
	12250 2400 11650 2400
Wire Wire Line
	12250 2500 11650 2500
Wire Wire Line
	11650 2600 12250 2600
Wire Wire Line
	12250 2700 11650 2700
Wire Wire Line
	11650 2800 12250 2800
Wire Wire Line
	12250 2900 11650 2900
Text Label 11850 2900 0    50   ~ 0
MD0
Text Label 11850 2800 0    50   ~ 0
MD1
Text Label 11850 2700 0    50   ~ 0
MD2
Text Label 11850 2600 0    50   ~ 0
MD3
Text Label 11850 2500 0    50   ~ 0
MD4
Text Label 11850 2400 0    50   ~ 0
MD5
Text Label 11850 2300 0    50   ~ 0
MD6
Text Label 11850 2200 0    50   ~ 0
MD7
Text Label 11850 2100 0    50   ~ 0
MD8
Text Label 11850 2000 0    50   ~ 0
MD9
Text Label 11850 1900 0    50   ~ 0
MD10
Text Label 11850 1800 0    50   ~ 0
MD11
Text Label 11850 1700 0    50   ~ 0
MD12
Text Label 11850 1600 0    50   ~ 0
MD13
Text Label 11850 1500 0    50   ~ 0
MD14
Text Label 11850 1400 0    50   ~ 0
MD15
Text GLabel 11000 4900 2    50   Input ~ 0
VCC3
$Comp
L Device:C C?
U 1 1 5FEFC1DF
P 11000 5050
AR Path="/5FC0C568/5FEFC1DF" Ref="C?"  Part="1" 
AR Path="/608897EB/5FEFC1DF" Ref="C?"  Part="1" 
AR Path="/5FEFC1DF" Ref="C3"  Part="1" 
F 0 "C3" H 11115 5096 50  0000 L CNN
F 1 "100n" H 11115 5005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 11038 4900 50  0001 C CNN
F 3 "~" H 11000 5050 50  0001 C CNN
	1    11000 5050
	1    0    0    -1  
$EndComp
$Comp
L SN74CB3T3245DW:SN74CB3T3245DW IC?
U 1 1 5FFD8BC2
P 13600 6850
AR Path="/5FC0C568/5FFD8BC2" Ref="IC?"  Part="1" 
AR Path="/608897EB/5FFD8BC2" Ref="IC?"  Part="1" 
AR Path="/5FFD8BC2" Ref="IC2"  Part="1" 
F 0 "IC2" H 14100 7115 50  0000 C CNN
F 1 "SN74CB3T3245PW" H 14100 7024 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 14450 6950 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74cb3t3245.pdf" H 14450 6850 50  0001 L CNN
F 4 "Texas Instruments SN74CB3T3245DW, Bus Switch, 8 x 1:1, 2.3  3.6 V, 20-Pin SOIC" H 14450 6750 50  0001 L CNN "Description"
F 5 "2.65" H 14450 6650 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 14450 6550 50  0001 L CNN "Manufacturer_Name"
F 7 "SN74CB3T3245DW" H 14450 6450 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "SN74CB3T3245DW" H 14450 6350 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/sn74cb3t3245dw/texas-instruments" H 14450 6250 50  0001 L CNN "Arrow Price/Stock"
F 10 "595-SN74CB3T3245DW" H 14450 6150 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74CB3T3245DW?qs=mE33ZKBHyE6dc7ntkB%252BA%252Bw%3D%3D" H 14450 6050 50  0001 L CNN "Mouser Price/Stock"
F 12 "C7145" H 13600 6850 50  0001 C CNN "LCSC Part"
	1    13600 6850
	1    0    0    -1  
$EndComp
$Comp
L SN74CB3T3245DW:SN74CB3T3245DW IC?
U 1 1 5FFD967A
P 13600 8250
AR Path="/5FC0C568/5FFD967A" Ref="IC?"  Part="1" 
AR Path="/608897EB/5FFD967A" Ref="IC?"  Part="1" 
AR Path="/5FFD967A" Ref="IC3"  Part="1" 
F 0 "IC3" H 14100 8515 50  0000 C CNN
F 1 "SN74CB3T3245PW" H 14100 8424 50  0000 C CNN
F 2 "Package_SO:TSSOP-20_4.4x6.5mm_P0.65mm" H 14450 8350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74cb3t3245.pdf" H 14450 8250 50  0001 L CNN
F 4 "Texas Instruments SN74CB3T3245DW, Bus Switch, 8 x 1:1, 2.3  3.6 V, 20-Pin SOIC" H 14450 8150 50  0001 L CNN "Description"
F 5 "2.65" H 14450 8050 50  0001 L CNN "Height"
F 6 "Texas Instruments" H 14450 7950 50  0001 L CNN "Manufacturer_Name"
F 7 "SN74CB3T3245DW" H 14450 7850 50  0001 L CNN "Manufacturer_Part_Number"
F 8 "SN74CB3T3245DW" H 14450 7750 50  0001 L CNN "Arrow Part Number"
F 9 "https://www.arrow.com/en/products/sn74cb3t3245dw/texas-instruments" H 14450 7650 50  0001 L CNN "Arrow Price/Stock"
F 10 "595-SN74CB3T3245DW" H 14450 7550 50  0001 L CNN "Mouser Part Number"
F 11 "https://www.mouser.co.uk/ProductDetail/Texas-Instruments/SN74CB3T3245DW?qs=mE33ZKBHyE6dc7ntkB%252BA%252Bw%3D%3D" H 14450 7450 50  0001 L CNN "Mouser Price/Stock"
F 12 "C7145" H 13600 8250 50  0001 C CNN "LCSC Part"
	1    13600 8250
	1    0    0    -1  
$EndComp
Entry Wire Line
	15200 7350 15300 7450
Entry Wire Line
	15200 7250 15300 7350
Entry Wire Line
	15200 7050 15300 7150
Entry Wire Line
	15200 7150 15300 7250
Entry Wire Line
	15200 9150 15300 9250
Entry Wire Line
	15200 9050 15300 9150
Entry Wire Line
	15200 8850 15300 8950
Entry Wire Line
	15200 8750 15300 8850
Entry Wire Line
	15200 8650 15300 8750
Entry Wire Line
	15200 8550 15300 8650
Entry Wire Line
	15200 8450 15300 8550
Entry Wire Line
	15200 7750 15300 7850
Entry Wire Line
	15200 7650 15300 7750
Entry Wire Line
	15200 8950 15300 9050
Entry Wire Line
	15200 7550 15300 7650
Entry Wire Line
	15200 7450 15300 7550
Text GLabel 15450 9400 2    50   Input ~ 0
MD[0..31]
Text GLabel 14600 6950 2    50   Input ~ 0
~BOE
Text GLabel 14600 8350 2    50   Input ~ 0
~BOE
Wire Bus Line
	15300 9400 15450 9400
Text GLabel 14850 6850 2    50   Input ~ 0
VCC3
Wire Wire Line
	14600 6850 14850 6850
Text GLabel 14850 8250 2    50   Input ~ 0
VCC3
Wire Wire Line
	14600 8250 14850 8250
Text Label 13300 8350 2    50   ~ 0
D7
Text Label 13300 8450 2    50   ~ 0
D6
Text Label 13300 8550 2    50   ~ 0
D5
Text Label 13300 9050 2    50   ~ 0
D4
Text Label 13300 8950 2    50   ~ 0
D3
Text Label 13300 8850 2    50   ~ 0
D2
Text Label 13300 8750 2    50   ~ 0
D1
Text Label 13300 8650 2    50   ~ 0
D0
Wire Wire Line
	13600 8350 13000 8350
Wire Wire Line
	13600 8450 13000 8450
Wire Wire Line
	13600 8550 13000 8550
Wire Wire Line
	13600 9050 13000 9050
Wire Wire Line
	13600 8950 13000 8950
Wire Wire Line
	13600 8850 13000 8850
Wire Wire Line
	13600 8750 13000 8750
Wire Wire Line
	13600 8650 13000 8650
Wire Wire Line
	13600 6950 13000 6950
Wire Wire Line
	13600 7050 13000 7050
Wire Wire Line
	13600 7150 13000 7150
Wire Wire Line
	13600 7250 13000 7250
Entry Wire Line
	12900 8950 13000 9050
Entry Wire Line
	12900 8850 13000 8950
Entry Wire Line
	12900 8750 13000 8850
Entry Wire Line
	12900 8650 13000 8750
Entry Wire Line
	12900 8550 13000 8650
Entry Wire Line
	12900 8450 13000 8550
Entry Wire Line
	12900 8350 13000 8450
Entry Wire Line
	12900 8250 13000 8350
Entry Wire Line
	12900 7550 13000 7650
Entry Wire Line
	12900 7450 13000 7550
Entry Wire Line
	12900 7350 13000 7450
Entry Wire Line
	12900 7250 13000 7350
Entry Wire Line
	12900 7150 13000 7250
Entry Wire Line
	12900 7050 13000 7150
Entry Wire Line
	12900 6950 13000 7050
Entry Wire Line
	12900 6850 13000 6950
Wire Wire Line
	13600 7350 13000 7350
Wire Wire Line
	13600 7450 13000 7450
Wire Wire Line
	13600 7550 13000 7550
Wire Wire Line
	13600 7650 13000 7650
Text Label 13300 6950 2    50   ~ 0
D8
Text Label 13300 7050 2    50   ~ 0
D9
Text Label 13300 7150 2    50   ~ 0
D10
Text Label 13300 7250 2    50   ~ 0
D11
Text Label 13300 7350 2    50   ~ 0
D12
Text Label 13300 7450 2    50   ~ 0
D13
Text Label 13300 7550 2    50   ~ 0
D14
Text Label 13300 7650 2    50   ~ 0
D15
Text GLabel 12200 7450 0    50   Input ~ 0
VCC3
$Comp
L Device:C C?
U 1 1 60291840
P 12300 7600
AR Path="/5FC0C568/60291840" Ref="C?"  Part="1" 
AR Path="/608897EB/60291840" Ref="C?"  Part="1" 
AR Path="/60291840" Ref="C1"  Part="1" 
F 0 "C1" H 12415 7646 50  0000 L CNN
F 1 "100n" H 12415 7555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 12338 7450 50  0001 C CNN
F 3 "~" H 12300 7600 50  0001 C CNN
	1    12300 7600
	1    0    0    -1  
$EndComp
Text GLabel 12200 9150 0    50   Input ~ 0
GND
Wire Wire Line
	12200 7450 12300 7450
Wire Wire Line
	12200 9150 12300 9150
Connection ~ 12300 7750
Wire Wire Line
	12300 7750 13600 7750
$Comp
L david:IS42S16320D-7TL IC?
U 1 1 5FC6F19C
P 10350 1400
AR Path="/5FC0C568/5FC6F19C" Ref="IC?"  Part="1" 
AR Path="/608897EB/5FC6F19C" Ref="IC?"  Part="1" 
AR Path="/5FC6F19C" Ref="IC1"  Part="1" 
F 0 "IC1" H 11000 1667 50  0000 C CNN
F 1 "IS42S16320D-7TL" H 11000 1576 50  0000 C CNN
F 2 "Package_SO:TSOP-II-54_22.2x10.16mm_P0.8mm" H 10550 -2100 50  0001 L BNN
F 3 "" H 10350 -1200 50  0001 L BNN
F 4 "IS42S16320D-7TL" H 10550 -2000 50  0001 L BNN "MANUFACTURER_PART_NUMBER"
F 5 "DRAM 512M (32Mx16) 143MHz SDR SDRAM, 3.3V" H 10550 -2200 50  0001 L BNN "DESCRIPTION"
	1    10350 1400
	1    0    0    -1  
$EndComp
Text GLabel 11000 5200 0    50   Input ~ 0
GND
Wire Wire Line
	10350 4000 10350 4100
Wire Wire Line
	10350 4900 11000 4900
Connection ~ 10350 4100
Wire Wire Line
	10350 4100 10350 4200
Connection ~ 10350 4200
Wire Wire Line
	10350 4200 10350 4300
Connection ~ 10350 4300
Wire Wire Line
	10350 4300 10350 4400
Connection ~ 10350 4400
Wire Wire Line
	10350 4400 10350 4500
Connection ~ 10350 4500
Wire Wire Line
	10350 4500 10350 4600
Connection ~ 10350 4600
Wire Wire Line
	10350 4600 10350 4900
Wire Wire Line
	11000 5200 11650 5200
Wire Wire Line
	11650 5200 11650 4600
Connection ~ 11650 4100
Wire Wire Line
	11650 4100 11650 4000
Connection ~ 11650 4200
Wire Wire Line
	11650 4200 11650 4100
Connection ~ 11650 4300
Wire Wire Line
	11650 4300 11650 4200
Connection ~ 11650 4400
Wire Wire Line
	11650 4400 11650 4300
Connection ~ 11650 4500
Wire Wire Line
	11650 4500 11650 4400
Connection ~ 11650 4600
Wire Wire Line
	11650 4600 11650 4500
Text Label 10100 2500 2    50   ~ 0
MA1
Text Label 10100 2600 2    50   ~ 0
MA2
Text Label 10100 2700 2    50   ~ 0
MA3
Text Label 10100 2800 2    50   ~ 0
MA4
Text Label 10100 2900 2    50   ~ 0
MA5
Text Label 10100 3000 2    50   ~ 0
MA6
Text Label 10100 3100 2    50   ~ 0
MA7
Text Label 10100 3200 2    50   ~ 0
MA8
Text Label 10100 3300 2    50   ~ 0
MA9
Text Label 10100 3400 2    50   ~ 0
MA10
Text Label 10100 3500 2    50   ~ 0
MA11
Text Label 10100 2400 2    50   ~ 0
MA0
Wire Wire Line
	9900 2400 10350 2400
Wire Wire Line
	10350 2500 9900 2500
Wire Wire Line
	9900 2600 10350 2600
Wire Wire Line
	10350 2700 9900 2700
Wire Wire Line
	9900 2800 10350 2800
Wire Wire Line
	9900 2900 10350 2900
Wire Wire Line
	10350 3000 9900 3000
Wire Wire Line
	9900 3100 10350 3100
Wire Wire Line
	10350 3200 9900 3200
Wire Wire Line
	9900 3300 10350 3300
Wire Wire Line
	10350 3400 9900 3400
Wire Wire Line
	9900 3500 10350 3500
Entry Wire Line
	9900 3500 9800 3400
Entry Wire Line
	9900 3400 9800 3300
Entry Wire Line
	9900 2600 9800 2500
Entry Wire Line
	9900 3300 9800 3200
Entry Wire Line
	9900 3200 9800 3100
Entry Wire Line
	9900 3100 9800 3000
Entry Wire Line
	9900 3000 9800 2900
Entry Wire Line
	9900 2900 9800 2800
Entry Wire Line
	9900 2800 9800 2700
Entry Wire Line
	9900 2700 9800 2600
Entry Wire Line
	9900 2500 9800 2400
Entry Wire Line
	9900 2400 9800 2300
Text GLabel 9800 2250 1    50   Input ~ 0
MA[0..12]
Text GLabel 10350 3700 0    50   Input ~ 0
BA0
Text GLabel 10350 3800 0    50   Input ~ 0
BA1
Text GLabel 12350 1100 1    50   BiDi ~ 0
MD[0..31]
Wire Wire Line
	14600 9150 15200 9150
Wire Wire Line
	15200 9050 14600 9050
Wire Wire Line
	14600 8950 15200 8950
Wire Wire Line
	15200 8850 14600 8850
Wire Wire Line
	15200 8750 14600 8750
Wire Wire Line
	14600 8650 15200 8650
Wire Wire Line
	15200 8550 14600 8550
Wire Wire Line
	14600 8450 15200 8450
Text Label 14800 8450 0    50   ~ 0
MD8
Text Label 14800 8550 0    50   ~ 0
MD9
Text Label 14800 8650 0    50   ~ 0
MD10
Text Label 14800 8750 0    50   ~ 0
MD11
Text Label 14800 8850 0    50   ~ 0
MD12
Text Label 14800 8950 0    50   ~ 0
MD13
Text Label 14800 9050 0    50   ~ 0
MD14
Text Label 14800 9150 0    50   ~ 0
MD15
Wire Wire Line
	15200 7750 14600 7750
Wire Wire Line
	14600 7650 15200 7650
Wire Wire Line
	15200 7550 14600 7550
Wire Wire Line
	15200 7450 14600 7450
Wire Wire Line
	14600 7350 15200 7350
Wire Wire Line
	15200 7250 14600 7250
Wire Wire Line
	14600 7150 15200 7150
Wire Wire Line
	15200 7050 14600 7050
Text Label 14800 7050 0    50   ~ 0
MD0
Text Label 14800 7150 0    50   ~ 0
MD1
Text Label 14800 7250 0    50   ~ 0
MD2
Text Label 14800 7350 0    50   ~ 0
MD3
Text Label 14800 7450 0    50   ~ 0
MD4
Text Label 14800 7550 0    50   ~ 0
MD5
Text Label 14800 7650 0    50   ~ 0
MD6
Text Label 14800 7750 0    50   ~ 0
MD7
Text Notes 14050 9750 0    50   ~ 0
SN74CBT3245APWR also works well (& cheaper)
$Comp
L david:68000D_PLUG U1
U 1 1 61E14451
P 3200 3150
F 0 "U1" H 3200 5731 50  0000 C CNN
F 1 "68000D" H 3200 5640 50  0000 C CNN
F 2 "Package_DIP:DIP-64_W22.86mm" H 3200 3150 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/reference-manual/MC68000UM.pdf" H 3200 3150 50  0001 C CNN
	1    3200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 950  4600 950 
Text Label 4350 950  0    50   ~ 0
A1
Wire Wire Line
	4200 1050 4600 1050
Text Label 4350 1050 0    50   ~ 0
A2
Wire Wire Line
	4200 1150 4600 1150
Wire Wire Line
	4200 1250 4600 1250
Wire Wire Line
	4200 1350 4600 1350
Wire Wire Line
	4200 1450 4600 1450
Wire Wire Line
	4200 1550 4600 1550
Wire Wire Line
	4200 1650 4600 1650
Wire Wire Line
	4200 1750 4600 1750
Wire Wire Line
	4200 1850 4600 1850
Wire Wire Line
	4200 1950 4600 1950
Wire Wire Line
	4200 2050 4600 2050
Wire Wire Line
	4200 2150 4600 2150
Wire Wire Line
	4200 2250 4600 2250
Wire Wire Line
	4200 2350 4600 2350
Wire Wire Line
	4200 2450 4600 2450
Wire Wire Line
	4200 2550 4600 2550
Wire Wire Line
	4200 2650 4600 2650
Wire Wire Line
	4200 2750 4600 2750
Wire Wire Line
	4200 2850 4600 2850
Wire Wire Line
	4200 2950 4600 2950
Wire Wire Line
	4200 3050 4600 3050
Wire Wire Line
	4200 3150 4600 3150
Text Label 4350 1150 0    50   ~ 0
A3
Text Label 4350 1250 0    50   ~ 0
A4
Text Label 4350 1350 0    50   ~ 0
A5
Text Label 4350 1450 0    50   ~ 0
A6
Text Label 4350 1550 0    50   ~ 0
A7
Text Label 4350 1650 0    50   ~ 0
A8
Text Label 4350 1750 0    50   ~ 0
A9
Text Label 4350 1850 0    50   ~ 0
A10
Text Label 4350 1950 0    50   ~ 0
A11
Text Label 4350 2050 0    50   ~ 0
A12
Text Label 4350 2150 0    50   ~ 0
A13
Text Label 4350 2250 0    50   ~ 0
A14
Text Label 4350 2450 0    50   ~ 0
A16
Text Label 4350 2550 0    50   ~ 0
A17
Text Label 4350 2650 0    50   ~ 0
A18
Text Label 4350 2750 0    50   ~ 0
A19
Text Label 4350 2850 0    50   ~ 0
A20
Text Label 4350 2950 0    50   ~ 0
A21
Text Label 4350 3050 0    50   ~ 0
A22
Text Label 4350 3150 0    50   ~ 0
A23
Text Label 4350 2350 0    50   ~ 0
A15
Text Label 4500 4050 0    50   ~ 0
D7
Text Label 4500 3950 0    50   ~ 0
D6
Text Label 4500 3850 0    50   ~ 0
D5
Text Label 4500 3750 0    50   ~ 0
D4
Text Label 4500 3650 0    50   ~ 0
D3
Text Label 4500 3550 0    50   ~ 0
D2
Text Label 4500 3450 0    50   ~ 0
D1
Text Label 4500 3350 0    50   ~ 0
D0
Wire Wire Line
	4200 3950 4800 3950
Wire Wire Line
	4200 3850 4800 3850
Wire Wire Line
	4200 3750 4800 3750
Wire Wire Line
	4200 3650 4800 3650
Wire Wire Line
	4200 3550 4800 3550
Wire Wire Line
	4200 3450 4800 3450
Wire Wire Line
	4200 3350 4800 3350
Wire Wire Line
	4200 4150 4800 4150
Wire Wire Line
	4200 4250 4800 4250
Wire Wire Line
	4200 4350 4800 4350
Wire Wire Line
	4200 4450 4800 4450
Entry Wire Line
	4900 4250 4800 4150
Entry Wire Line
	4900 4350 4800 4250
Entry Wire Line
	4900 4450 4800 4350
Entry Wire Line
	4900 4550 4800 4450
Entry Wire Line
	4900 4650 4800 4550
Entry Wire Line
	4900 4750 4800 4650
Entry Wire Line
	4900 4850 4800 4750
Entry Wire Line
	4900 4950 4800 4850
Entry Wire Line
	4900 3450 4800 3350
Entry Wire Line
	4900 3550 4800 3450
Entry Wire Line
	4900 3650 4800 3550
Entry Wire Line
	4900 3750 4800 3650
Entry Wire Line
	4900 3850 4800 3750
Entry Wire Line
	4900 3950 4800 3850
Entry Wire Line
	4900 4050 4800 3950
Entry Wire Line
	4900 4150 4800 4050
Wire Wire Line
	4200 4550 4800 4550
Wire Wire Line
	4200 4650 4800 4650
Wire Wire Line
	4200 4750 4800 4750
Wire Wire Line
	4200 4850 4800 4850
Text Label 4500 4150 0    50   ~ 0
D8
Text Label 4500 4250 0    50   ~ 0
D9
Text Label 4500 4350 0    50   ~ 0
D10
Text Label 4500 4450 0    50   ~ 0
D11
Text Label 4500 4550 0    50   ~ 0
D12
Text Label 4500 4650 0    50   ~ 0
D13
Text Label 4500 4750 0    50   ~ 0
D14
Text Label 4500 4850 0    50   ~ 0
D15
Wire Bus Line
	12900 6600 12700 6600
Text GLabel 12700 6600 0    50   BiDi ~ 0
D[0..31]
Wire Wire Line
	4200 4050 4800 4050
Wire Bus Line
	4900 5600 4700 5600
Text GLabel 4700 5600 0    50   BiDi ~ 0
D[15..0]
Entry Wire Line
	4700 2250 4600 2350
Entry Wire Line
	4700 2150 4600 2250
Entry Wire Line
	4700 2050 4600 2150
Entry Wire Line
	4700 1950 4600 2050
Entry Wire Line
	4700 1850 4600 1950
Entry Wire Line
	4700 1750 4600 1850
Entry Wire Line
	4700 1650 4600 1750
Entry Wire Line
	4700 1550 4600 1650
Entry Wire Line
	4700 3050 4600 3150
Entry Wire Line
	4700 2950 4600 3050
Entry Wire Line
	4700 2850 4600 2950
Entry Wire Line
	4700 2750 4600 2850
Entry Wire Line
	4700 2650 4600 2750
Entry Wire Line
	4700 2550 4600 2650
Entry Wire Line
	4700 2450 4600 2550
Entry Wire Line
	4700 2350 4600 2450
Wire Bus Line
	4700 700  4500 700 
Entry Wire Line
	4700 1250 4600 1350
Entry Wire Line
	4700 1150 4600 1250
Entry Wire Line
	4700 1050 4600 1150
Entry Wire Line
	4700 950  4600 1050
Entry Wire Line
	4700 850  4600 950 
Entry Wire Line
	4700 1450 4600 1550
Entry Wire Line
	4700 1350 4600 1450
Text GLabel 4500 700  0    50   BiDi ~ 0
A[23..1]
Text GLabel 5750 10300 3    50   Input ~ 0
MA[0..12]
Text GLabel 10350 2200 0    50   Input ~ 0
~RAMWE
Text GLabel 10350 2100 0    50   Input ~ 0
GND
Text GLabel 10350 2000 0    50   Input ~ 0
~RAS
Text GLabel 10350 1900 0    50   Input ~ 0
~CAS
Text GLabel 10350 1800 0    50   Input ~ 0
DQM1
Text GLabel 10350 1700 0    50   Input ~ 0
DQM0
Text GLabel 10350 1400 0    50   Input ~ 0
RAMCLK
Text GLabel 2200 950  0    50   Output ~ 0
CLK8
Text GLabel 2200 1250 0    50   Output ~ 0
IPL0
Text GLabel 2200 1350 0    50   Output ~ 0
IPL1
Text GLabel 2200 1450 0    50   Output ~ 0
IPL2
Text GLabel 2200 1650 0    50   Output ~ 0
BGK
Text GLabel 2200 1750 0    50   Input ~ 0
BG
Text GLabel 2200 1850 0    50   Output ~ 0
BR
Text GLabel 2200 2150 0    50   Input ~ 0
FC0
Text GLabel 2200 2250 0    50   Input ~ 0
FC1
Text GLabel 2200 2350 0    50   Input ~ 0
FC2
Text GLabel 2200 2650 0    50   Input ~ 0
~VMA
Text GLabel 2200 2750 0    50   Input ~ 0
E
Text GLabel 2200 2850 0    50   Output ~ 0
~VPA
Text GLabel 2200 3750 0    50   BiDi ~ 0
~BERR
Text GLabel 2200 3950 0    50   Output ~ 0
~DTACK
Text GLabel 2200 4350 0    50   Output ~ 0
~HLT
Text GLabel 2200 4450 0    50   BiDi ~ 0
~RST
Text GLabel 4200 5050 2    50   Input ~ 0
~AS
Text GLabel 4200 5150 2    50   Input ~ 0
~UDS
Text GLabel 4200 5250 2    50   Input ~ 0
~LDS
Text GLabel 4200 5350 2    50   BiDi ~ 0
R~W
$Comp
L CPU_NXP_68000:68000D U2
U 1 1 6251B8CA
P 3200 8500
F 0 "U2" H 3200 11081 50  0000 C CNN
F 1 "68000D" H 3200 10990 50  0000 C CNN
F 2 "Package_DIP:DIP-64_W22.86mm_Socket" H 3200 8500 50  0001 C CNN
F 3 "https://www.nxp.com/docs/en/reference-manual/MC68000UM.pdf" H 3200 8500 50  0001 C CNN
	1    3200 8500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 6300 4600 6300
Text Label 4350 6300 0    50   ~ 0
A1
Wire Wire Line
	4200 6400 4600 6400
Text Label 4350 6400 0    50   ~ 0
A2
Wire Wire Line
	4200 6500 4600 6500
Wire Wire Line
	4200 6600 4600 6600
Wire Wire Line
	4200 6700 4600 6700
Wire Wire Line
	4200 6800 4600 6800
Wire Wire Line
	4200 6900 4600 6900
Wire Wire Line
	4200 7000 4600 7000
Wire Wire Line
	4200 7100 4600 7100
Wire Wire Line
	4200 7200 4600 7200
Wire Wire Line
	4200 7300 4600 7300
Wire Wire Line
	4200 7400 4600 7400
Wire Wire Line
	4200 7500 4600 7500
Wire Wire Line
	4200 7600 4600 7600
Wire Wire Line
	4200 7700 4600 7700
Wire Wire Line
	4200 7800 4600 7800
Wire Wire Line
	4200 7900 4600 7900
Wire Wire Line
	4200 8000 4600 8000
Wire Wire Line
	4200 8100 4600 8100
Wire Wire Line
	4200 8200 4600 8200
Wire Wire Line
	4200 8300 4600 8300
Wire Wire Line
	4200 8400 4600 8400
Wire Wire Line
	4200 8500 4600 8500
Text Label 4350 6500 0    50   ~ 0
A3
Text Label 4350 6600 0    50   ~ 0
A4
Text Label 4350 6700 0    50   ~ 0
A5
Text Label 4350 6800 0    50   ~ 0
A6
Text Label 4350 6900 0    50   ~ 0
A7
Text Label 4350 7000 0    50   ~ 0
A8
Text Label 4350 7100 0    50   ~ 0
A9
Text Label 4350 7200 0    50   ~ 0
A10
Text Label 4350 7300 0    50   ~ 0
A11
Text Label 4350 7400 0    50   ~ 0
A12
Text Label 4350 7500 0    50   ~ 0
A13
Text Label 4350 7600 0    50   ~ 0
A14
Text Label 4350 7800 0    50   ~ 0
A16
Text Label 4350 7900 0    50   ~ 0
A17
Text Label 4350 8000 0    50   ~ 0
A18
Text Label 4350 8100 0    50   ~ 0
A19
Text Label 4350 8200 0    50   ~ 0
A20
Text Label 4350 8300 0    50   ~ 0
A21
Text Label 4350 8400 0    50   ~ 0
A22
Text Label 4350 8500 0    50   ~ 0
A23
Text Label 4350 7700 0    50   ~ 0
A15
Text Label 4500 9400 0    50   ~ 0
D7
Text Label 4500 9300 0    50   ~ 0
D6
Text Label 4500 9200 0    50   ~ 0
D5
Text Label 4500 9100 0    50   ~ 0
D4
Text Label 4500 9000 0    50   ~ 0
D3
Text Label 4500 8900 0    50   ~ 0
D2
Text Label 4500 8800 0    50   ~ 0
D1
Text Label 4500 8700 0    50   ~ 0
D0
Wire Wire Line
	4200 9300 4800 9300
Wire Wire Line
	4200 9200 4800 9200
Wire Wire Line
	4200 9100 4800 9100
Wire Wire Line
	4200 9000 4800 9000
Wire Wire Line
	4200 8900 4800 8900
Wire Wire Line
	4200 8800 4800 8800
Wire Wire Line
	4200 8700 4800 8700
Wire Wire Line
	4200 9500 4800 9500
Wire Wire Line
	4200 9600 4800 9600
Wire Wire Line
	4200 9700 4800 9700
Wire Wire Line
	4200 9800 4800 9800
Entry Wire Line
	4900 9600 4800 9500
Entry Wire Line
	4900 9700 4800 9600
Entry Wire Line
	4900 9800 4800 9700
Entry Wire Line
	4900 9900 4800 9800
Entry Wire Line
	4900 10000 4800 9900
Entry Wire Line
	4900 10100 4800 10000
Entry Wire Line
	4900 10200 4800 10100
Entry Wire Line
	4900 10300 4800 10200
Entry Wire Line
	4900 8800 4800 8700
Entry Wire Line
	4900 8900 4800 8800
Entry Wire Line
	4900 9000 4800 8900
Entry Wire Line
	4900 9100 4800 9000
Entry Wire Line
	4900 9200 4800 9100
Entry Wire Line
	4900 9300 4800 9200
Entry Wire Line
	4900 9400 4800 9300
Entry Wire Line
	4900 9500 4800 9400
Wire Wire Line
	4200 9900 4800 9900
Wire Wire Line
	4200 10000 4800 10000
Wire Wire Line
	4200 10100 4800 10100
Wire Wire Line
	4200 10200 4800 10200
Text Label 4500 9500 0    50   ~ 0
D8
Text Label 4500 9600 0    50   ~ 0
D9
Text Label 4500 9700 0    50   ~ 0
D10
Text Label 4500 9800 0    50   ~ 0
D11
Text Label 4500 9900 0    50   ~ 0
D12
Text Label 4500 10000 0    50   ~ 0
D13
Text Label 4500 10100 0    50   ~ 0
D14
Text Label 4500 10200 0    50   ~ 0
D15
Wire Wire Line
	4200 9400 4800 9400
Wire Bus Line
	4900 10900 4700 10900
Text GLabel 4700 10900 0    50   BiDi ~ 0
D[15..0]
Entry Wire Line
	4700 7600 4600 7700
Entry Wire Line
	4700 7500 4600 7600
Entry Wire Line
	4700 7400 4600 7500
Entry Wire Line
	4700 7300 4600 7400
Entry Wire Line
	4700 7200 4600 7300
Entry Wire Line
	4700 7100 4600 7200
Entry Wire Line
	4700 7000 4600 7100
Entry Wire Line
	4700 6900 4600 7000
Entry Wire Line
	4700 8400 4600 8500
Entry Wire Line
	4700 8300 4600 8400
Entry Wire Line
	4700 8200 4600 8300
Entry Wire Line
	4700 8100 4600 8200
Entry Wire Line
	4700 8000 4600 8100
Entry Wire Line
	4700 7900 4600 8000
Entry Wire Line
	4700 7800 4600 7900
Entry Wire Line
	4700 7700 4600 7800
Wire Bus Line
	4700 6050 4500 6050
Entry Wire Line
	4700 6600 4600 6700
Entry Wire Line
	4700 6500 4600 6600
Entry Wire Line
	4700 6400 4600 6500
Entry Wire Line
	4700 6300 4600 6400
Entry Wire Line
	4700 6200 4600 6300
Entry Wire Line
	4700 6800 4600 6900
Entry Wire Line
	4700 6700 4600 6800
Text GLabel 4500 6050 0    50   BiDi ~ 0
A[23..1]
Text GLabel 2200 6300 0    50   Input ~ 0
CLKOUT
Text GLabel 2200 6600 0    50   Input ~ 0
IPL0
Text GLabel 2200 6700 0    50   Input ~ 0
IPL1
Text GLabel 2200 6800 0    50   Input ~ 0
IPL2
Text GLabel 2200 7000 0    50   Input ~ 0
BGK
Text GLabel 2200 7100 0    50   Output ~ 0
BG
Text GLabel 2200 7200 0    50   Input ~ 0
BR
Text GLabel 2200 7500 0    50   Output ~ 0
FC0
Text GLabel 2200 7600 0    50   Output ~ 0
FC1
Text GLabel 2200 7700 0    50   Output ~ 0
FC2
Text GLabel 2200 8000 0    50   Output ~ 0
~VMA_INT
Text GLabel 2200 8100 0    50   Output ~ 0
E_INT
Text GLabel 2200 8200 0    50   Input ~ 0
~VPA
Text GLabel 2200 9100 0    50   Input ~ 0
~BERR
Text GLabel 2200 9300 0    50   Input ~ 0
~DTACK_INT
Text GLabel 2200 9700 0    50   Input ~ 0
~HLT
Text GLabel 2200 9800 0    50   BiDi ~ 0
~RST
Text GLabel 5200 10400 2    50   Output ~ 0
~AS_INT
Text GLabel 4200 10500 2    50   Output ~ 0
~UDS
Text GLabel 4200 10600 2    50   Output ~ 0
~LDS
Text GLabel 4200 10700 2    50   Output ~ 0
R~W
$Comp
L Device:R_Pack04 RN4
U 1 1 628218FC
P 15450 3500
F 0 "RN4" V 15775 3500 50  0000 C CNN
F 1 "3k3" V 15684 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 15725 3500 50  0001 C CNN
F 3 "~" H 15450 3500 50  0001 C CNN
	1    15450 3500
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN3
U 1 1 628241A5
P 15450 2800
F 0 "RN3" V 15775 2800 50  0000 C CNN
F 1 "3k3" V 15684 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 15725 2800 50  0001 C CNN
F 3 "~" H 15450 2800 50  0001 C CNN
	1    15450 2800
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN2
U 1 1 6283FA68
P 15450 2100
F 0 "RN2" V 15775 2100 50  0000 C CNN
F 1 "3k3" V 15684 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 15725 2100 50  0001 C CNN
F 3 "~" H 15450 2100 50  0001 C CNN
	1    15450 2100
	0    1    -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN1
U 1 1 6283FA6E
P 15450 1400
F 0 "RN1" V 15775 1400 50  0000 C CNN
F 1 "3k3" V 15684 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 15725 1400 50  0001 C CNN
F 3 "~" H 15450 1400 50  0001 C CNN
	1    15450 1400
	0    1    -1   0   
$EndComp
Text Label 14950 3400 2    50   ~ 0
D4
Text Label 14950 3500 2    50   ~ 0
D3
Text Label 14950 3600 2    50   ~ 0
D2
Text Label 14950 3700 2    50   ~ 0
D1
Text Label 14950 2700 2    50   ~ 0
D0
Wire Wire Line
	15250 3400 14650 3400
Wire Wire Line
	15250 3500 14650 3500
Wire Wire Line
	15250 3600 14650 3600
Wire Wire Line
	15250 3700 14650 3700
Wire Wire Line
	15250 2700 14650 2700
Wire Wire Line
	15250 1500 14650 1500
Wire Wire Line
	15250 1400 14650 1400
Wire Wire Line
	15250 1300 14650 1300
Entry Wire Line
	14550 3600 14650 3700
Entry Wire Line
	14550 3500 14650 3600
Entry Wire Line
	14550 3400 14650 3500
Entry Wire Line
	14550 3300 14650 3400
Entry Wire Line
	14550 2900 14650 3000
Entry Wire Line
	14550 2800 14650 2900
Entry Wire Line
	14550 2700 14650 2800
Entry Wire Line
	14550 2600 14650 2700
Entry Wire Line
	14550 2200 14650 2300
Entry Wire Line
	14550 2100 14650 2200
Entry Wire Line
	14550 2000 14650 2100
Entry Wire Line
	14550 1900 14650 2000
Entry Wire Line
	14550 1500 14650 1600
Entry Wire Line
	14550 1400 14650 1500
Entry Wire Line
	14550 1300 14650 1400
Entry Wire Line
	14550 1200 14650 1300
Wire Wire Line
	15250 2300 14650 2300
Wire Wire Line
	15250 2200 14650 2200
Wire Wire Line
	15250 2100 14650 2100
Wire Wire Line
	15250 2000 14650 2000
Text Label 14950 1600 2    50   ~ 0
D8
Text Label 14950 1500 2    50   ~ 0
D9
Text Label 14950 1400 2    50   ~ 0
D10
Text Label 14950 1300 2    50   ~ 0
D11
Text Label 14950 2300 2    50   ~ 0
D12
Text Label 14950 2200 2    50   ~ 0
D13
Text Label 14950 2100 2    50   ~ 0
D14
Text Label 14950 2000 2    50   ~ 0
D15
Text GLabel 14550 1000 1    50   BiDi ~ 0
D[0..31]
Wire Wire Line
	15650 3700 15650 3600
Connection ~ 15650 1400
Wire Wire Line
	15650 1400 15650 1300
Connection ~ 15650 1500
Wire Wire Line
	15650 1500 15650 1400
Connection ~ 15650 1600
Wire Wire Line
	15650 1600 15650 1500
Connection ~ 15650 2000
Wire Wire Line
	15650 2000 15650 1600
Connection ~ 15650 2100
Wire Wire Line
	15650 2100 15650 2000
Connection ~ 15650 2200
Wire Wire Line
	15650 2200 15650 2100
Wire Wire Line
	15650 2300 15650 2200
Connection ~ 15650 2700
Connection ~ 15650 2800
Wire Wire Line
	15650 2800 15650 2700
Connection ~ 15650 2900
Wire Wire Line
	15650 2900 15650 2800
Connection ~ 15650 3500
Wire Wire Line
	15650 3500 15650 3400
Connection ~ 15650 3600
Wire Wire Line
	15650 3600 15650 3500
Wire Wire Line
	15650 1300 15650 1150
Wire Wire Line
	15650 1150 15800 1150
Connection ~ 15650 1300
Text GLabel 15800 1150 2    50   Input ~ 0
VCC
Text GLabel 8000 10950 3    50   Input ~ 0
GND
Text GLabel 800  5850 0    50   Input ~ 0
VCC
Wire Wire Line
	3200 6100 3250 6100
Text GLabel 3000 650  0    50   Input ~ 0
VCC
Text GLabel 3050 5650 0    50   Input ~ 0
GND
Text GLabel 3050 10900 0    50   Input ~ 0
GND
Wire Wire Line
	3050 10900 3200 10900
Connection ~ 3200 10900
Wire Wire Line
	3200 10900 3300 10900
Text GLabel 7250 1950 3    50   Input ~ 0
GND
Text GLabel 8100 1500 2    50   Output ~ 0
VCC3
Text GLabel 6450 1500 0    50   Input ~ 0
VCC
$Comp
L Oscillator:IQXO-70 X1
U 1 1 6341AC87
P 7100 3550
F 0 "X1" H 7444 3596 50  0000 L CNN
F 1 "IQXO-70" H 7444 3505 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_IQD_IQXO70-4Pin_7.5x5.0mm" H 7775 3225 50  0001 C CNN
F 3 "http://www.iqdfrequencyproducts.com/products/details/iqxo-70-11-30.pdf" H 7000 3550 50  0001 C CNN
	1    7100 3550
	1    0    0    -1  
$EndComp
Text GLabel 6500 3900 3    50   Input ~ 0
GND
Text GLabel 6300 3000 0    50   Input ~ 0
VCC
Text GLabel 8200 3550 2    50   Input ~ 0
OSC
NoConn ~ 6800 3550
$Comp
L Device:C C?
U 1 1 63783284
P 9400 5600
AR Path="/5FC0C568/63783284" Ref="C?"  Part="1" 
AR Path="/608897EB/63783284" Ref="C?"  Part="1" 
AR Path="/63783284" Ref="C9"  Part="1" 
F 0 "C9" H 9515 5646 50  0000 L CNN
F 1 "100n" H 9515 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9438 5450 50  0001 C CNN
F 3 "~" H 9400 5600 50  0001 C CNN
	1    9400 5600
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 6386115E
P 9800 5600
AR Path="/5FC0C568/6386115E" Ref="C?"  Part="1" 
AR Path="/608897EB/6386115E" Ref="C?"  Part="1" 
AR Path="/6386115E" Ref="C10"  Part="1" 
F 0 "C10" H 9915 5646 50  0000 L CNN
F 1 "10u" H 9915 5555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 9838 5450 50  0001 C CNN
F 3 "~" H 9800 5600 50  0001 C CNN
	1    9800 5600
	-1   0    0    1   
$EndComp
Connection ~ 9400 5450
Wire Wire Line
	9800 5450 9400 5450
Wire Wire Line
	9400 5750 9600 5750
Text GLabel 9600 5850 3    50   Input ~ 0
GND
Wire Wire Line
	9600 5750 9600 5850
$Comp
L Device:C C8
U 1 1 6391D70E
P 7800 1650
F 0 "C8" H 7915 1696 50  0000 L CNN
F 1 "10u" H 7915 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 7838 1500 50  0001 C CNN
F 3 "~" H 7800 1650 50  0001 C CNN
	1    7800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1500 7800 1500
Connection ~ 7800 1500
Wire Wire Line
	7800 1500 7550 1500
Connection ~ 7250 1800
Wire Wire Line
	7250 1800 7800 1800
Wire Wire Line
	7250 1800 7250 1950
$Comp
L Device:C C7
U 1 1 639E22AD
P 6500 3550
F 0 "C7" H 6615 3596 50  0000 L CNN
F 1 "100n" H 6615 3505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6538 3400 50  0001 C CNN
F 3 "~" H 6500 3550 50  0001 C CNN
	1    6500 3550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3150 6500 3250
Wire Wire Line
	6500 3900 6500 3850
Wire Wire Line
	7100 3850 6500 3850
Connection ~ 6500 3850
Wire Wire Line
	6500 3850 6500 3700
Wire Wire Line
	7100 3250 6500 3250
Connection ~ 6500 3250
Wire Wire Line
	6500 3250 6500 3400
$Comp
L Device:C C?
U 1 1 63A8649F
P 1200 6000
AR Path="/5FC0C568/63A8649F" Ref="C?"  Part="1" 
AR Path="/608897EB/63A8649F" Ref="C?"  Part="1" 
AR Path="/63A8649F" Ref="C4"  Part="1" 
F 0 "C4" H 1315 6046 50  0000 L CNN
F 1 "10u" H 1315 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1238 5850 50  0001 C CNN
F 3 "~" H 1200 6000 50  0001 C CNN
	1    1200 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:C C?
U 1 1 63A864A5
P 1600 6000
AR Path="/5FC0C568/63A864A5" Ref="C?"  Part="1" 
AR Path="/608897EB/63A864A5" Ref="C?"  Part="1" 
AR Path="/63A864A5" Ref="C5"  Part="1" 
F 0 "C5" H 1715 6046 50  0000 L CNN
F 1 "100n" H 1715 5955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1638 5850 50  0001 C CNN
F 3 "~" H 1600 6000 50  0001 C CNN
	1    1600 6000
	-1   0    0    1   
$EndComp
Wire Wire Line
	1600 6150 1200 6150
Connection ~ 1200 6150
Wire Wire Line
	1200 6150 800  6150
Wire Wire Line
	800  5850 1200 5850
Wire Wire Line
	3250 5850 3250 6100
Connection ~ 1200 5850
Wire Wire Line
	1200 5850 1600 5850
Connection ~ 1600 5850
Wire Wire Line
	1600 5850 3250 5850
Connection ~ 3250 6100
Wire Wire Line
	3250 6100 3300 6100
Text GLabel 800  6150 0    50   Input ~ 0
GND
Connection ~ 9600 5750
Wire Wire Line
	9600 5750 9800 5750
Wire Wire Line
	6450 1500 6950 1500
Text Label 14800 5050 2    50   ~ 0
TP1
Text Label 14800 5250 2    50   ~ 0
TP2
Text Label 14800 5450 2    50   ~ 0
TP3
Text Label 14800 5650 2    50   ~ 0
TP4
Wire Wire Line
	14800 5050 15100 5050
Text Label 14800 5850 2    50   ~ 0
TP5
$Comp
L Connector:TestPoint TP1
U 1 1 63DC9582
P 15100 5050
F 0 "TP1" V 15054 5238 50  0000 L CNN
F 1 "TestPoint" V 15145 5238 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 15300 5050 50  0001 C CNN
F 3 "~" H 15300 5050 50  0001 C CNN
	1    15100 5050
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP2
U 1 1 63DCA03F
P 15100 5250
F 0 "TP2" V 15054 5438 50  0000 L CNN
F 1 "TestPoint" V 15145 5438 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 15300 5250 50  0001 C CNN
F 3 "~" H 15300 5250 50  0001 C CNN
	1    15100 5250
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP3
U 1 1 63DCA45A
P 15100 5450
F 0 "TP3" V 15054 5638 50  0000 L CNN
F 1 "TestPoint" V 15145 5638 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 15300 5450 50  0001 C CNN
F 3 "~" H 15300 5450 50  0001 C CNN
	1    15100 5450
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP5
U 1 1 63DCA5F5
P 15100 5850
F 0 "TP5" V 15054 6038 50  0000 L CNN
F 1 "TestPoint" V 15145 6038 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 15300 5850 50  0001 C CNN
F 3 "~" H 15300 5850 50  0001 C CNN
	1    15100 5850
	0    1    1    0   
$EndComp
$Comp
L Connector:TestPoint TP4
U 1 1 63DCAB6F
P 15100 5650
F 0 "TP4" V 15054 5838 50  0000 L CNN
F 1 "TestPoint" V 15145 5838 50  0000 L CNN
F 2 "TestPoint:TestPoint_THTPad_1.0x1.0mm_Drill0.5mm" H 15300 5650 50  0001 C CNN
F 3 "~" H 15300 5650 50  0001 C CNN
	1    15100 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R_Pack04 RN8
U 1 1 63F3D28F
P 13850 3400
F 0 "RN8" V 14175 3400 50  0000 C CNN
F 1 "3k3" V 14084 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14125 3400 50  0001 C CNN
F 3 "~" H 13850 3400 50  0001 C CNN
	1    13850 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN7
U 1 1 63F3D295
P 13850 2700
F 0 "RN7" V 14175 2700 50  0000 C CNN
F 1 "3k3" V 14084 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14125 2700 50  0001 C CNN
F 3 "~" H 13850 2700 50  0001 C CNN
	1    13850 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN6
U 1 1 63F3D29B
P 13850 2000
F 0 "RN6" V 14175 2000 50  0000 C CNN
F 1 "3k3" V 14084 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14125 2000 50  0001 C CNN
F 3 "~" H 13850 2000 50  0001 C CNN
	1    13850 2000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN5
U 1 1 63F3D2A1
P 13850 1300
F 0 "RN5" V 14175 1300 50  0000 C CNN
F 1 "3k3" V 14084 1300 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14125 1300 50  0001 C CNN
F 3 "~" H 13850 1300 50  0001 C CNN
	1    13850 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14050 3600 14050 3500
Connection ~ 14050 1300
Wire Wire Line
	14050 1300 14050 1200
Connection ~ 14050 1400
Wire Wire Line
	14050 1400 14050 1300
Connection ~ 14050 1500
Wire Wire Line
	14050 1500 14050 1400
Connection ~ 14050 1900
Wire Wire Line
	14050 1900 14050 1500
Connection ~ 14050 2000
Wire Wire Line
	14050 2000 14050 1900
Connection ~ 14050 2100
Wire Wire Line
	14050 2100 14050 2000
Connection ~ 14050 2200
Wire Wire Line
	14050 2200 14050 2100
Connection ~ 14050 2600
Wire Wire Line
	14050 2600 14050 2200
Connection ~ 14050 2700
Wire Wire Line
	14050 2700 14050 2600
Connection ~ 14050 2800
Wire Wire Line
	14050 2800 14050 2700
Connection ~ 14050 2900
Wire Wire Line
	14050 2900 14050 2800
Connection ~ 14050 3300
Wire Wire Line
	14050 3300 14050 2900
Connection ~ 14050 3400
Wire Wire Line
	14050 3400 14050 3300
Connection ~ 14050 3500
Wire Wire Line
	14050 3500 14050 3400
Wire Wire Line
	14050 1200 14050 1050
Wire Wire Line
	14050 1050 14200 1050
Connection ~ 14050 1200
Text GLabel 14200 1050 2    50   Input ~ 0
VCC
$Comp
L Device:R_Pack04 RN10
U 1 1 63F70F9C
P 13850 4800
F 0 "RN10" V 14175 4800 50  0000 C CNN
F 1 "3k3" V 14084 4800 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14125 4800 50  0001 C CNN
F 3 "~" H 13850 4800 50  0001 C CNN
	1    13850 4800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_Pack04 RN9
U 1 1 63F70FA2
P 13850 4100
F 0 "RN9" V 14175 4100 50  0000 C CNN
F 1 "3k3" V 14084 4100 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 14125 4100 50  0001 C CNN
F 3 "~" H 13850 4100 50  0001 C CNN
	1    13850 4100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14050 5000 14050 4900
Connection ~ 14050 4000
Wire Wire Line
	14050 4000 14050 3600
Connection ~ 14050 4100
Wire Wire Line
	14050 4100 14050 4000
Connection ~ 14050 4200
Wire Wire Line
	14050 4200 14050 4100
Connection ~ 14050 4300
Wire Wire Line
	14050 4300 14050 4200
Connection ~ 14050 4700
Wire Wire Line
	14050 4700 14050 4300
Connection ~ 14050 4800
Wire Wire Line
	14050 4800 14050 4700
Connection ~ 14050 4900
Wire Wire Line
	14050 4900 14050 4800
Wire Wire Line
	13650 1500 13250 1500
Text Label 13500 1500 2    50   ~ 0
A1
Wire Wire Line
	13650 1400 13250 1400
Text Label 13500 1400 2    50   ~ 0
A2
Wire Wire Line
	13650 1300 13250 1300
Wire Wire Line
	13650 1200 13250 1200
Wire Wire Line
	13650 2200 13250 2200
Wire Wire Line
	13650 2100 13250 2100
Wire Wire Line
	13650 2000 13250 2000
Wire Wire Line
	13650 1900 13250 1900
Wire Wire Line
	13650 2900 13250 2900
Wire Wire Line
	13650 2800 13250 2800
Wire Wire Line
	13650 2600 13250 2600
Wire Wire Line
	13650 2700 13250 2700
Wire Wire Line
	13650 3600 13250 3600
Wire Wire Line
	13650 3500 13250 3500
Wire Wire Line
	13650 3400 13250 3400
Wire Wire Line
	13650 3300 13250 3300
Wire Wire Line
	13650 4300 13250 4300
Wire Wire Line
	13650 4200 13250 4200
Wire Wire Line
	13650 4100 13250 4100
Wire Wire Line
	13650 4000 13250 4000
Wire Wire Line
	13650 4800 13250 4800
Wire Wire Line
	13650 4900 13250 4900
Wire Wire Line
	13650 5000 13250 5000
Text Label 13500 1300 2    50   ~ 0
A3
Text Label 13500 1200 2    50   ~ 0
A4
Text Label 13500 2200 2    50   ~ 0
A5
Text Label 13500 2100 2    50   ~ 0
A6
Text Label 13500 2000 2    50   ~ 0
A7
Text Label 13500 1900 2    50   ~ 0
A8
Text Label 13500 2900 2    50   ~ 0
A9
Text Label 13500 2800 2    50   ~ 0
A10
Text Label 13500 2600 2    50   ~ 0
A11
Text Label 13500 2700 2    50   ~ 0
A12
Text Label 13500 3600 2    50   ~ 0
A13
Text Label 13500 3500 2    50   ~ 0
A14
Text Label 13500 3300 2    50   ~ 0
A16
Text Label 13500 4300 2    50   ~ 0
A17
Text Label 13500 4200 2    50   ~ 0
A18
Text Label 13500 4100 2    50   ~ 0
A19
Text Label 13500 4000 2    50   ~ 0
A20
Text Label 13500 4800 2    50   ~ 0
A21
Text Label 13500 4900 2    50   ~ 0
A22
Text Label 13500 5000 2    50   ~ 0
A23
Text Label 13500 3400 2    50   ~ 0
A15
Entry Wire Line
	13150 3400 13250 3500
Entry Wire Line
	13150 3300 13250 3400
Entry Wire Line
	13150 3200 13250 3300
Entry Wire Line
	13150 2800 13250 2900
Entry Wire Line
	13150 2700 13250 2800
Entry Wire Line
	13150 2000 13250 2100
Entry Wire Line
	13150 1900 13250 2000
Entry Wire Line
	13150 1800 13250 1900
Entry Wire Line
	13150 4900 13250 5000
Entry Wire Line
	13150 4800 13250 4900
Entry Wire Line
	13150 4700 13250 4800
Entry Wire Line
	13150 3500 13250 3600
Entry Wire Line
	13150 4200 13250 4300
Entry Wire Line
	13150 4100 13250 4200
Entry Wire Line
	13150 4000 13250 4100
Entry Wire Line
	13150 3900 13250 4000
Entry Wire Line
	13150 2100 13250 2200
Entry Wire Line
	13150 1400 13250 1500
Entry Wire Line
	13150 1300 13250 1400
Entry Wire Line
	13150 1200 13250 1300
Entry Wire Line
	13150 1100 13250 1200
Entry Wire Line
	13150 2600 13250 2700
Entry Wire Line
	13150 2500 13250 2600
Text GLabel 13150 1000 1    50   BiDi ~ 0
A[23..1]
NoConn ~ 13650 4700
Connection ~ 14050 3600
Text Label 10100 3600 2    50   ~ 0
MA12
Entry Wire Line
	9900 3600 9800 3500
Wire Wire Line
	10350 3600 9900 3600
$Comp
L Jumper:SolderJumper_3_Open JP1
U 1 1 61DF66E3
P 6500 3000
F 0 "JP1" H 6500 3205 50  0000 C CNN
F 1 "SolderJumper_3_Open" H 6500 3114 50  0000 C CNN
F 2 "Jumper:SolderJumper-3_P1.3mm_Open_RoundedPad1.0x1.5mm" H 6500 3000 50  0001 C CNN
F 3 "~" H 6500 3000 50  0001 C CNN
	1    6500 3000
	1    0    0    -1  
$EndComp
Text GLabel 6700 3000 2    50   Input ~ 0
VCC3
Text GLabel 8450 7850 2    50   Output ~ 0
DQM1
Text GLabel 6450 8050 0    50   Input ~ 0
CLK8
Text GLabel 6450 6750 0    50   Output ~ 0
CLKOUT
Text GLabel 6450 7150 0    50   Input ~ 0
~RST
Text GLabel 6450 7450 0    50   Output ~ 0
~AS
Text GLabel 6450 7550 0    50   Input ~ 0
~UDS
Text GLabel 6450 7650 0    50   Input ~ 0
~LDS
Text GLabel 6450 5750 0    50   Input ~ 0
R~W
Text GLabel 6450 5950 0    50   Output ~ 0
~DTACK
Text GLabel 8450 9550 2    50   Input ~ 0
~BOE
Text GLabel 8450 5850 2    50   Input ~ 0
OSC
Text GLabel 6450 6650 0    50   Input ~ 0
~BERR
Text GLabel 6450 6050 0    50   Input ~ 0
BGK
Text GLabel 6450 5850 0    50   Input ~ 0
~DTACK_INT
Text GLabel 6450 7750 0    50   Output ~ 0
E
Text GLabel 6450 6550 0    50   Output ~ 0
~VPA
Text GLabel 6450 7250 0    50   Output ~ 0
~VMA
Text Label 8700 7050 0    50   ~ 0
MA4
Text Label 8700 7150 0    50   ~ 0
MA5
Text Label 8700 7250 0    50   ~ 0
MA6
Text Label 8700 7350 0    50   ~ 0
MA7
Text Label 8700 7450 0    50   ~ 0
MA8
Text Label 8700 7550 0    50   ~ 0
MA9
Text Label 8700 7650 0    50   ~ 0
MA11
Wire Wire Line
	8900 7050 8450 7050
Wire Wire Line
	8900 7150 8450 7150
Wire Wire Line
	8450 7250 8900 7250
Wire Wire Line
	8900 7350 8450 7350
Wire Wire Line
	8450 7450 8900 7450
Wire Wire Line
	8900 7550 8450 7550
Wire Wire Line
	8900 7650 8450 7650
Entry Wire Line
	8900 7050 9000 7150
Entry Wire Line
	8900 7750 9000 7850
Entry Wire Line
	8900 7150 9000 7250
Entry Wire Line
	8900 7250 9000 7350
Entry Wire Line
	8900 7350 9000 7450
Entry Wire Line
	8900 7650 9000 7750
Entry Wire Line
	8900 7450 9000 7550
Text Label 8700 7750 0    50   ~ 0
MA12
Wire Wire Line
	8900 7750 8450 7750
Entry Wire Line
	8900 7550 9000 7650
Text GLabel 6450 9450 0    50   Output ~ 0
~RAS
Text GLabel 6450 9150 0    50   Output ~ 0
DQM0
Text GLabel 6450 8350 0    50   Input ~ 0
RAMCLK
Text GLabel 6450 9650 0    50   Output ~ 0
BA1
Text GLabel 6450 9550 0    50   Output ~ 0
BA0
Text Label 6200 9950 2    50   ~ 0
MA1
Text Label 6200 10050 2    50   ~ 0
MA2
Text Label 6200 6950 2    50   ~ 0
MA3
Text Label 6200 9750 2    50   ~ 0
MA10
Text Label 6200 9850 2    50   ~ 0
MA0
Wire Wire Line
	5850 9850 6450 9850
Wire Wire Line
	6450 9950 5850 9950
Wire Wire Line
	5850 10050 6450 10050
Wire Wire Line
	6450 6950 5850 6950
Wire Wire Line
	6450 9750 5850 9750
Text GLabel 6450 7050 0    50   Input ~ 0
~AS_INT
Text GLabel 6450 7350 0    50   Input ~ 0
~VMA_INT
Text GLabel 6450 7850 0    50   Input ~ 0
E_INT
Text GLabel 6450 8650 0    50   Input ~ 0
FC0
Text GLabel 6450 8550 0    50   Input ~ 0
FC1
Text GLabel 6450 8450 0    50   Input ~ 0
FC2
Text Label 6150 6450 2    50   ~ 0
TP1
Text Label 6150 6350 2    50   ~ 0
TP2
Text Label 8750 9450 0    50   ~ 0
TP3
Text Label 8750 8350 0    50   ~ 0
TP4
Wire Wire Line
	6150 6450 6450 6450
Wire Wire Line
	6150 6350 6450 6350
Wire Wire Line
	8750 9450 8450 9450
Wire Wire Line
	8750 8350 8450 8350
Wire Wire Line
	8750 8450 8450 8450
Text Label 8750 8450 0    50   ~ 0
TP5
Wire Wire Line
	6450 8750 6050 8750
Text Label 6300 8750 2    50   ~ 0
A1
Wire Wire Line
	6450 8850 6050 8850
Text Label 6300 8850 2    50   ~ 0
A2
Wire Wire Line
	6450 8950 6050 8950
Wire Wire Line
	8450 5950 9100 5950
Wire Wire Line
	8450 6050 9100 6050
Wire Wire Line
	8450 6150 9100 6150
Text Label 6300 8950 2    50   ~ 0
A3
Text Label 8600 5750 0    50   ~ 0
A4
Text Label 8600 5950 0    50   ~ 0
A5
Text Label 8600 6050 0    50   ~ 0
A6
Text Label 8600 6150 0    50   ~ 0
A7
Wire Wire Line
	8450 6250 9100 6250
Wire Wire Line
	8450 6350 9100 6350
Wire Wire Line
	8450 6450 9100 6450
Wire Wire Line
	8450 6550 9100 6550
Wire Wire Line
	8450 6650 9100 6650
Wire Wire Line
	8450 8150 9100 8150
Wire Wire Line
	8450 8250 9100 8250
Wire Wire Line
	8450 9150 9100 9150
Wire Wire Line
	8450 9250 9100 9250
Wire Wire Line
	8450 9850 9100 9850
Wire Wire Line
	8450 9950 9100 9950
Wire Wire Line
	8450 10050 9100 10050
Wire Wire Line
	8450 9650 9100 9650
Wire Wire Line
	8450 9750 9100 9750
Wire Wire Line
	8450 6950 9100 6950
Text Label 8600 6250 0    50   ~ 0
A8
Text Label 8600 6350 0    50   ~ 0
A9
Text Label 8600 6450 0    50   ~ 0
A10
Text Label 8600 6550 0    50   ~ 0
A11
Text Label 8600 8150 0    50   ~ 0
A14
Text Label 8600 9150 0    50   ~ 0
A16
Text Label 8600 9250 0    50   ~ 0
A17
Text Label 8600 9850 0    50   ~ 0
A18
Text Label 8600 9950 0    50   ~ 0
A19
Text Label 8600 10050 0    50   ~ 0
A20
Text Label 8600 9650 0    50   ~ 0
A21
Text Label 8600 9750 0    50   ~ 0
A22
Text Label 8600 6950 0    50   ~ 0
A23
Text Label 8600 8250 0    50   ~ 0
A15
Text Label 8600 8050 0    50   ~ 0
A13
Text Label 8600 6650 0    50   ~ 0
A12
Wire Wire Line
	8450 8050 9100 8050
Wire Wire Line
	8450 10450 9300 10450
Wire Wire Line
	9300 10450 9300 10350
Wire Wire Line
	9300 10350 9700 10350
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 626B9C00
P 9900 10350
F 0 "J1" H 9872 10324 50  0000 R CNN
F 1 "Conn_01x06_Male" H 9872 10233 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Horizontal" H 9900 10350 50  0001 C CNN
F 3 "~" H 9900 10350 50  0001 C CNN
	1    9900 10350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9700 10450 9350 10450
Wire Wire Line
	9350 10450 9350 10550
Wire Wire Line
	9350 10550 8450 10550
Wire Wire Line
	8450 10250 9400 10250
Wire Wire Line
	9400 10250 9400 10550
Wire Wire Line
	9400 10550 9700 10550
Wire Wire Line
	8450 10350 9250 10350
Wire Wire Line
	9250 10350 9250 10650
Wire Wire Line
	9250 10650 9700 10650
Text GLabel 9700 10150 0    50   Input ~ 0
VCC3
Text GLabel 9700 10250 0    50   Input ~ 0
GND
Text Label 8650 10250 0    50   ~ 0
TDI
Text Label 8650 10350 0    50   ~ 0
TMS
Text Label 8650 10450 0    50   ~ 0
TCK
Text Label 8650 10550 0    50   ~ 0
TDO
Text GLabel 6450 9250 0    50   Output ~ 0
~RAMWE
Text GLabel 6450 9350 0    50   Output ~ 0
~CAS
Entry Wire Line
	5850 6950 5750 7050
Entry Wire Line
	9200 7950 9100 8050
Entry Wire Line
	9200 6550 9100 6650
Entry Wire Line
	9200 6450 9100 6550
Entry Wire Line
	9200 6350 9100 6450
Entry Wire Line
	9200 6250 9100 6350
Entry Wire Line
	9200 6150 9100 6250
Entry Wire Line
	9200 9650 9100 9750
Entry Wire Line
	5950 8850 6050 8950
Entry Wire Line
	9200 6050 9100 6150
Entry Wire Line
	9200 5950 9100 6050
Entry Wire Line
	9200 9550 9100 9650
Entry Wire Line
	9200 5850 9100 5950
Entry Wire Line
	9100 5750 9200 5650
Entry Wire Line
	5950 8750 6050 8850
Entry Wire Line
	5950 8650 6050 8750
Entry Wire Line
	9200 8050 9100 8150
Entry Wire Line
	9200 9850 9100 9950
Entry Wire Line
	9200 9750 9100 9850
Entry Wire Line
	9200 9150 9100 9250
Entry Wire Line
	9200 9050 9100 9150
Entry Wire Line
	9200 8150 9100 8250
Entry Wire Line
	9200 9950 9100 10050
Entry Wire Line
	9200 6850 9100 6950
Text GLabel 9300 10900 2    50   BiDi ~ 0
A[23..1]
Entry Wire Line
	5850 10050 5750 10150
Entry Wire Line
	5850 9950 5750 10050
Entry Wire Line
	5850 9850 5750 9950
Entry Wire Line
	5850 9750 5750 9850
Wire Wire Line
	8000 10850 8000 10950
Wire Wire Line
	8450 5750 9100 5750
Text GLabel 9600 5450 1    50   Input ~ 0
VCC3
Wire Wire Line
	3200 5550 3200 5650
Wire Wire Line
	3200 5650 3050 5650
Wire Wire Line
	3300 5550 3300 5650
Wire Wire Line
	3300 5650 3200 5650
Connection ~ 3200 5650
Wire Wire Line
	3000 650  3200 650 
Wire Wire Line
	3300 650  3300 750 
Wire Wire Line
	3200 750  3200 650 
Connection ~ 3200 650 
Wire Wire Line
	3200 650  3300 650 
Text GLabel 10350 1500 0    50   Input ~ 0
VCC3
Wire Wire Line
	7850 10850 8000 10850
Connection ~ 7850 10850
Connection ~ 7550 10850
Connection ~ 7350 5450
Wire Wire Line
	7750 5450 9400 5450
Connection ~ 7750 5450
Connection ~ 7550 5450
Wire Wire Line
	7250 5450 7350 5450
Wire Wire Line
	7150 5450 7250 5450
Connection ~ 7250 5450
Wire Wire Line
	7450 5450 7550 5450
Wire Wire Line
	7350 5450 7450 5450
Connection ~ 7450 5450
Wire Wire Line
	7550 10850 7650 10850
Connection ~ 7650 10850
Wire Wire Line
	7750 10850 7850 10850
Wire Wire Line
	7650 10850 7750 10850
Connection ~ 7750 10850
Connection ~ 7350 10850
Wire Wire Line
	7450 10850 7550 10850
Wire Wire Line
	7350 10850 7450 10850
Connection ~ 7450 10850
Wire Wire Line
	7650 5450 7750 5450
Wire Wire Line
	7550 5450 7650 5450
Connection ~ 7650 5450
Wire Wire Line
	7250 10850 7350 10850
Wire Wire Line
	7150 10850 7250 10850
Connection ~ 7250 10850
$Comp
L CPLD_Xilinx:XC95144XL-TQ100 U3
U 1 1 61F6850C
P 7450 8150
F 0 "U3" H 7450 11028 50  0000 C CNN
F 1 "XC95144XL-TQ100" H 7450 10937 50  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 7450 8150 50  0001 C CNN
F 3 "https://www.xilinx.com/support/documentation/data_sheets/ds056.pdf" H 7450 8150 50  0001 C CNN
	1    7450 8150
	1    0    0    -1  
$EndComp
Wire Wire Line
	15650 2900 15650 3000
Wire Wire Line
	15650 2300 15650 2700
Connection ~ 15650 2300
Wire Wire Line
	15650 3000 15650 3400
Connection ~ 15650 3000
Connection ~ 15650 3400
Wire Wire Line
	15250 1600 14650 1600
Wire Wire Line
	12300 7750 12300 9150
Wire Wire Line
	12300 9150 13600 9150
Connection ~ 12300 9150
Wire Wire Line
	15250 2800 14650 2800
Wire Wire Line
	15250 2900 14650 2900
Wire Wire Line
	15250 3000 14650 3000
Text Label 14950 2800 2    50   ~ 0
D5
Text Label 14950 2900 2    50   ~ 0
D6
Text Label 14950 3000 2    50   ~ 0
D7
Wire Wire Line
	4200 10400 5100 10400
Wire Wire Line
	5100 10400 5100 10200
Connection ~ 5100 10400
Wire Wire Line
	5100 10400 5200 10400
$Comp
L Device:R R2
U 1 1 629A41FF
P 5100 10050
F 0 "R2" H 5170 10096 50  0000 L CNN
F 1 "2k2" H 5170 10005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" V 5030 10050 50  0001 C CNN
F 3 "~" H 5100 10050 50  0001 C CNN
	1    5100 10050
	1    0    0    -1  
$EndComp
Text GLabel 5100 9900 1    50   Input ~ 0
VCC
$Comp
L Device:R_Pack04 RN11
U 1 1 62B1A81C
P 15400 4500
F 0 "RN11" V 15725 4500 50  0000 C CNN
F 1 "3k3" V 15634 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_Array_Convex_4x0603" V 15675 4500 50  0001 C CNN
F 3 "~" H 15400 4500 50  0001 C CNN
	1    15400 4500
	0    1    -1   0   
$EndComp
Text GLabel 15800 4400 2    50   Input ~ 0
VCC3
Wire Wire Line
	15800 4400 15700 4400
Wire Wire Line
	15700 4400 15700 4500
Wire Wire Line
	15700 4700 15600 4700
Connection ~ 15700 4400
Wire Wire Line
	15700 4400 15600 4400
Wire Wire Line
	15600 4600 15700 4600
Connection ~ 15700 4600
Wire Wire Line
	15700 4600 15700 4700
Wire Wire Line
	15600 4500 15700 4500
Connection ~ 15700 4500
Wire Wire Line
	15700 4500 15700 4600
Wire Wire Line
	14800 5250 15100 5250
Wire Wire Line
	14800 5650 15000 5650
Wire Wire Line
	14800 5450 14950 5450
Wire Wire Line
	14800 5850 15050 5850
Wire Wire Line
	15200 4700 15100 4700
Connection ~ 15100 5250
Wire Wire Line
	15050 5850 15050 4600
Wire Wire Line
	15050 4600 15200 4600
Connection ~ 15050 5850
Wire Wire Line
	15050 5850 15100 5850
Wire Wire Line
	15100 4700 15100 5250
Wire Wire Line
	15000 5650 15000 4500
Wire Wire Line
	15000 4500 15200 4500
Connection ~ 15000 5650
Wire Wire Line
	15000 5650 15100 5650
Wire Wire Line
	14950 5450 14950 4400
Wire Wire Line
	14950 4400 15200 4400
Connection ~ 14950 5450
Wire Wire Line
	14950 5450 15100 5450
Wire Wire Line
	7400 3550 8200 3550
Wire Bus Line
	9200 10900 9300 10900
Text GLabel 9000 5150 1    50   BiDi ~ 0
MD[0..31]
Wire Bus Line
	5950 10900 9200 10900
Connection ~ 9200 10900
NoConn ~ 8450 8850
NoConn ~ 8450 8950
NoConn ~ 8450 9350
NoConn ~ 6450 6150
NoConn ~ 6450 6250
NoConn ~ 6450 8150
NoConn ~ 6450 8250
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6338A821
P 6500 3250
F 0 "#FLG0101" H 6500 3325 50  0001 C CNN
F 1 "PWR_FLAG" V 6500 3377 50  0000 L CNN
F 2 "" H 6500 3250 50  0001 C CNN
F 3 "~" H 6500 3250 50  0001 C CNN
	1    6500 3250
	0    -1   -1   0   
$EndComp
$Comp
L Regulator_Linear:LT1129-3.3_SOT223 U4
U 1 1 633C5B92
P 7250 1500
F 0 "U4" H 7250 1742 50  0000 C CNN
F 1 "LT1129-3.3_SOT223" H 7250 1651 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 7250 1725 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/112935ff.pdf" H 7250 1450 50  0001 C CNN
	1    7250 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D1
U 1 1 635AEA3E
P 10150 8400
F 0 "D1" V 10189 8282 50  0000 R CNN
F 1 "LED" V 10098 8282 50  0000 R CNN
F 2 "LED_SMD:LED_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10150 8400 50  0001 C CNN
F 3 "~" H 10150 8400 50  0001 C CNN
	1    10150 8400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 635B0CCA
P 10150 8000
F 0 "R1" H 10220 8046 50  0000 L CNN
F 1 "1k" H 10220 7955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" V 10080 8000 50  0001 C CNN
F 3 "~" H 10150 8000 50  0001 C CNN
	1    10150 8000
	1    0    0    -1  
$EndComp
Text GLabel 10150 7750 1    50   Input ~ 0
VCC3
Wire Wire Line
	10150 8250 10150 8150
Wire Wire Line
	10150 7850 10150 7750
Wire Wire Line
	8450 8550 10150 8550
NoConn ~ 8450 8750
NoConn ~ 8450 8650
Text Label 8600 8550 0    50   ~ 0
LED1
Wire Bus Line
	5950 8650 5950 10900
Wire Bus Line
	5750 7050 5750 10300
Wire Bus Line
	9000 5150 9000 7850
Wire Bus Line
	12350 1100 12350 2800
Wire Bus Line
	15300 7150 15300 9400
Wire Bus Line
	9800 2250 9800 3500
Wire Bus Line
	9200 5650 9200 10900
Wire Bus Line
	13150 1000 13150 4900
Wire Bus Line
	14550 1000 14550 3600
Wire Bus Line
	4900 8800 4900 10900
Wire Bus Line
	4900 3450 4900 5600
Wire Bus Line
	12900 6600 12900 8950
Wire Bus Line
	4700 700  4700 3050
Wire Bus Line
	4700 6050 4700 8400
$EndSCHEMATC
