* -------------------------------------------------------
* Tecnológico de Costa Rica

* Escuela de Ingeniería en Electrónica

* Introducción al Diseño de Circuitos Integrados
* Profesor: Alfonso Chacon Quesada

* Tarea 3. Punto 3.
* Tiempos de Set-up y Hold para el flip flop estático maestro-esclavo.

* Realizado por: Alexander Castro Lara, 2017153854
* correo: alexanderestudiantec.cr

* I Semestre, 2024
* -------------------------------------------------------



*----------------------------------------------------------------------
* Parameters and models
*----------------------------------------------------------------------
.param SUPPLY=1.8

.temp 70

.option scale=90n
.option post
.option search='/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Castro_Lara_I_2024_vlsi/tarea3/Hspice/lpmos'

.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Hspice/lp5mos/xt018.lib' tm
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Hspice/lp5mos/param.lib' 3s
.lib '/mnt/vol_NFS_rh003/Est_VLSI_I_2024/Hspice/lp5mos/config.lib' default
*----------------------------------------------------------------------



*----------------------------------------------------------------------
* Circuito
*----------------------------------------------------------------------
.param wp1=7.83
.param wn1=4.6  
.param rninv=12.91
.param rpinv=25.82  


***__Columna 1__***
xm0 n1 D 0 0 ne w=wn1 l=2.3 // Entrada D
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'
xm1 MQIB CIB n1 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm2 MQIB CI n2 vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'
xm3 n2 D vdd vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'


***__Columna 2__***
xm4 n3 MQI 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'
xm5 MQIB CI n3 vdd ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm6 MQIB CIB n4 vdd pe w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'
xm7 n4 MQI vdd vdd pe w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'


***__Columna 3__***
xm8 MQI MQIB 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm9 MQI MQIB vdd vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'


***__Columna 4__***
xm10 n5 MQI 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'
xm11 SQIB CI n5 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm12 SQIB CIB n4 vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'
xm13 n5 MQI vdd vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'


***__Columna 5__***
xm14 n7 SQI 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'
xm15 SQIB CIB n7 vdd ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm16 SQIB CI n8 vdd pe w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'
xm17 n8 SQI vdd vdd pe w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'


***__Columna 6__***
xm18 SQI SQIB 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm19 SQI SQIB vdd vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'


***__Inversor de Q__***
xm20 Q SQIB 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm21 Q SQIB vdd vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'


***__Inversor de CN__***
xm22 CI CN 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm23 CI CN vdd vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'

xm24 CIB CI 0 0 ne w=wn1 l=2.3
+ as='wn1*5' ad='wn1*5' ps='2*wn1+10' pd='2*wn1+10'

xm25 CIB CI vdd vdd pe w=wp1 l=2.3
+ as='wp1*5' ad='wp1*5' ps='2*wp1+10' pd='2*wp1+10'
*----------------------------------------------------------------------



*----------------------------------------------------------------------
* Stimulus
*----------------------------------------------------------------------
***__Alimentación_***
Vvdd vdd 0 'SUPPLY'


***__Entradas D y CN_***

*VD D 0 PULSE(0 'SUPPLY' 10n 100p 100p 100n 200.4n)   
*VCN CN 0 PULSE(0 'SUPPLY' 20n 100p 100p 100n 200.4n) *Reducir el tiempo de inicio prograsivamente
*----------------------------------------------------------------------



*----------------------------------------------------------------------
* Measures
*----------------------------------------------------------------------
.tran 100ps 50ns

.measure tDC *Data to Clock
+ TRIG v(D) VAL='SUPPLY/2' RISE=1
+ TARG v(CN) VAL='SUPPLY/2' RISE=1

.measure tCQ *Clock to Q
+ TRIG v(CN) VAL='SUPPLY/2' RISE=1
+ TARG v(Q) VAL='SUPPLY' RISE=1

.measure tDQ *Data to Q
+ TRIG v(D) VAL='SUPPLY/2' RISE=1
+ TARG v(Q) VAL='SUPPLY' RISE=1

*.measure tpd param='(tpdr+tpdf)/2' * average prop delay
*----------------------------------------------------------------------



*----------------------------------------------------------------------
* End program
*----------------------------------------------------------------------
.end
*----------------------------------------------------------------------
