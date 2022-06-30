* SPICE export by:  S-Edit 16.30
* Export time:      Sat Jul 24 14:28:39 2021
* Design:           10T FULL ADDER
* Cell:             Cell0
* Interface:        view0
* View:             view0
* View type:        connectivity
* Export as:        top-level cell
* Export mode:      hierarchical
* Exclude empty cells: yes
* Exclude .model:   no
* Exclude .end:     no
* Exclude simulator commands:     no
* Expand paths:     yes
* Wrap lines:       no
* Root path:        C:\Users\Hemanth\OneDrive\Desktop\NIST INTERN\10T FULL ADDER
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********
.tran 1n 80n start=0n
.lib "C:\Users\Hemanth\OneDrive\Documents\Tanner EDA\Tanner Tools v16.3\Process\Generic_250nm\Generic_250nm_Tech\Generic_250nm.lib" TT
.print tran v(ain,gnd) v(bin,gnd) v(cin,gnd) v(carry,gnd)  v(sum,gnd)
.power V1 0n 80n

v_ain ain gnd PULSE (0 5 250p 250p 250p 10n 20n)
v_bin bin gnd PULSE (0 5 250p 250p 250p 20n 40n)
v_cin cin gnd PULSE (0 5 250p 250p 250p 40n 80n)
V_carry cout gnd PULSE (0 5 250p 250p 250p 30n 60n)
V1 vdd gnd 5
***** Top Level *****
MMn1 N_2 bin N_1 Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=-507 $y=-900 $w=414 $h=600
MMn2 N_1 ain Gnd Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1193 $y=-900 $w=414 $h=600
MMn3 sum cin N_3 Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=3193 $y=-900 $w=414 $h=600
MMn4 N_3 N_2 Gnd Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=5393 $y=-900 $w=414 $h=600
MMn5 carry N_3 ain Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=2393 $y=-3100 $w=414 $h=600
MMp1 N_2 bin ain Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=-507 $y=200 $w=414 $h=600
MMp2 N_1 ain Vdd Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1193 $y=200 $w=414 $h=600
MMp3 sum cin N_2 Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=3193 $y=200 $w=414 $h=600
MMp4 N_3 N_2 Vdd Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=5393 $y=200 $w=414 $h=600
MMp5 carry N_3 cin Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=2393 $y=-2000 $w=414 $h=600
.MEASURE TRAN RiseDelay_Me1 TRIG v(ain) VAL='2.5' TD='0' RISE=1 TARG v(sum) VAL='2.5' TD='0' FALL=1 OFF
.MEASURE TRAN FallDelay_Me1 TRIG v(ain) VAL='2.5' TD='0' FALL=1 TARG v(sum) VAL='2.5' TD='0' RISE=1 OFF
.MEASURE TRAN delayTime PARAM='(RiseDelay_Me1+FallDelay_Me1)/2.0' ON $ $x=1300 $y=-2350 $w=2000 $h=300
.power v_ain
.power v_bin
.power v_cin
.power v_carry
********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********

.end

