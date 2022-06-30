* SPICE export by:  S-Edit 16.30
* Export time:      Tue Jul 27 16:56:02 2021
* Design:           14t full adder
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
* Root path:        C:\Users\Hemanth\OneDrive\Desktop\NIST INTERN\14t full adder
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********
.tran 1n 80n start=0n
.lib "C:\Users\Hemanth\OneDrive\Documents\Tanner EDA\Tanner Tools v16.3\Process\Generic_250nm\Generic_250nm_Tech\Generic_250nm.lib" TT
.print tran v(ain,gnd) v(bin,gnd) v(cin,gnd) v(sum,gnd) v(cout,gnd)
.power V1 0n 80n

v_ain ain gnd PULSE (0 5 250p 250p 250p 10n 20n)
v_bin bin gnd PULSE (0 5 250p 250p 250p 20n 40n)
v_cin cin gnd PULSE (0 5 250p 250p 250p 40n 80n)
V1 vdd gnd 4
***** Top Level *****
MMn1 N_6 bin N_1 Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=-1407 $y=-1400 $w=414 $h=600
MMn2 N_1 cout Gnd Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=393 $y=-1400 $w=414 $h=600
MMn3 sum cin N_2 Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1993 $y=-1400 $w=414 $h=600
MMn4 N_2 N_6 Gnd Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=3793 $y=-1400 $w=414 $h=600
MMn5 N_3 N_6 Gnd Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=93 $y=-4100 $w=414 $h=600
MMn6 cout N_6 cin Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=2293 $y=-4100 $w=414 $h=600
MMn7 N_5 N_3 cout Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=4393 $y=-4100 $w=414 $h=600
MMp1 N_6 bin cout Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=-1407 $y=-300 $w=414 $h=600
MMp2 N_1 cout Vdd Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=393 $y=-300 $w=414 $h=600
MMp3 sum cin N_6 Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1993 $y=-300 $w=414 $h=600
MMp4 N_2 N_6 Vdd Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=3793 $y=-300 $w=414 $h=600
MMp5 N_3 N_6 Vdd Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=93 $y=-3100 $w=414 $h=600
MMp6 cout N_3 N_4 Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=2293 $y=-3100 $w=414 $h=600
MMp7 N_5 N_6 cout Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=4393 $y=-3100 $w=414 $h=600
.MEASURE TRAN RiseDelay_Me1 TRIG v(ain) VAL='1.75' TD='0' RISE=1 TARG v(cout) VAL='1.75' TD='0' FALL=1 OFF
.MEASURE TRAN FallDelay_Me1 TRIG v(ain) VAL='1.75' TD='0' FALL=1 TARG v(cout) VAL='1.75' TD='0' RISE=1 OFF
.MEASURE TRAN delayName PARAM='(RiseDelay_Me1+FallDelay_Me1)/2.0' ON $ $x=800 $y=-2650 $w=2000 $h=300
.power v_ain
.power v_bin
.power v_cin
********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********

.end

