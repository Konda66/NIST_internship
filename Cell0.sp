* SPICE export by:  S-Edit 16.30
* Export time:      Sat Jul 24 14:13:10 2021
* Design:           8t full adder
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
* Root path:        C:\Users\Hemanth\OneDrive\Desktop\NIST INTERN\8t full adder
* Exclude global pins:   no
* Exclude instance locations: no
* Control property name(s): SPICE

********* Simulation Settings - General Section *********
.tran 1n 80n start=0n
.lib "C:\Users\Hemanth\OneDrive\Documents\Tanner EDA\Tanner Tools v16.3\Process\Generic_250nm\Generic_250nm_Tech\Generic_250nm.lib" TT
.print tran v(ain,gnd) v(bin,gnd) v(cin,gnd) v(sum,gnd) v(cout,gnd)
.power V1 0n 80n
*.measure tran delaytime trig v(ain) val=2.5 fall=3 targ v(sum) val=2.5 rise=3

v_ain ain gnd PULSE (0 5 250p 250p 250p 10n 20n)
v_bin bin gnd PULSE (0 5 250p 250p 250p 20n 40n)
v_cin cin gnd PULSE (0 5 250p 250p 250p 40n 80n)
V1 vdd gnd 5
***** Top Level *****
MMn1 N_1 ain Gnd Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1393 $y=-1000 $w=414 $h=600
MMn2 sum N_1 Gnd Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=6093 $y=-1100 $w=414 $h=600
MMn3 cout N_1 cin Gnd NMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1593 $y=-4300 $w=414 $h=600
MMp1 N_1 bin ain Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=-107 $y=700 $w=414 $h=600
MMp2 N_1 ain bin Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1393 $y=700 $w=414 $h=600
MMp3 sum cin N_1 Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=4093 $y=600 $w=414 $h=600
MMp4 sum N_1 cin Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=6093 $y=600 $w=414 $h=600
MMp5 cout N_1 ain Vdd PMOS25 W=1.5u L=250n M=1 AS=975f PS=4.3u AD=975f PD=4.3u $ $x=1593 $y=-2900 $w=414 $h=600
.MEASURE TRAN RiseDelay_Me1 TRIG v(ain) VAL='2.5' TD='0' RISE=1 TARG v(sum) VAL='2.5' TD='0' FALL=1 OFF
.MEASURE TRAN FallDelay_Me1 TRIG v(ain) VAL='2.5' TD='0' FALL=1 TARG v(sum) VAL='2.5' TD='0' RISE=1 OFF
.MEASURE TRAN delayTime PARAM='(RiseDelay_Me1+FallDelay_Me1)/2.0' ON $ $x=1200 $y=-3050 $w=2000 $h=300
.power v_ain 
.power v_bin
.power v_cin 
********* Simulation Settings - Analysis Section *********

********* Simulation Settings - Additional SPICE Commands *********

.end

