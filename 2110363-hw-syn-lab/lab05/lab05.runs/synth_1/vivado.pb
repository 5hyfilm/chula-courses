
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:092	
517.3592	
225.984Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/utils_1/imports/synth_1/nano_sc_system.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2q
oC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/utils_1/imports/synth_1/nano_sc_system.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
i
Command: %s
53*	vivadotcl28
6synth_design -top nano_sc_system -part xc7a35tcpg236-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
z
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2	
xc7a35tZ17-347h px� 
j
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2	
xc7a35tZ17-349h px� 
D
Loading part %s157*device2
xc7a35tcpg236-1Z21-403h px� 
Z
$Part: %s does not have CEAM library.966*device2
xc7a35tcpg236-1Z21-9227h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
M
#Helper process launched with PID %s4824*oasys2
7192Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:08 . Memory (MB): peak = 1368.438 ; gain = 447.797
h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2
clkDiv2a
]C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/clockDiv.v2
288@Z8-11121h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2

segments2f
bC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/hexTo7Segment.v2
288@Z8-11121h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
c_flag2
wire2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/nanocpu.v2
688@Z8-11241h px� 
�
.'%s' is already implicitly declared on line %s5153*oasys2
c_flag2
682`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/nanocpu.v2
798@Z8-8895h px� 
�
;root scope declaration is not allowed in Verilog 95/2K mode7406*oasys2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/rom.v2
98@Z8-11145h px� 
�
;root scope declaration is not allowed in Verilog 95/2K mode7406*oasys2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/rom.v2
108@Z8-11145h px� 
�
synthesizing module '%s'%s4497*oasys2
nano_sc_system2
 2g
cC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/nano_sc_system.v2
108@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2	
nanocpu2
 2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/nanocpu.v2
108@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
adder2
 2^
ZC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/adder.v2
98@Z8-6157h px� 
I
%s
*synth21
/	Parameter WIDTH bound to: 30 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
adder2
 2
02
12^
ZC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/adder.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux2_12
 2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/mux.v2
98@Z8-6157h px� 
I
%s
*synth21
/	Parameter WIDTH bound to: 30 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux2_12
 2
02
12\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/mux.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2

extender2
 2a
]C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/extender.v2
108@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

extender2
 2
02
12a
]C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/extender.v2
108@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux2_1__parameterized02
 2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/mux.v2
98@Z8-6157h px� 
H
%s
*synth20
.	Parameter WIDTH bound to: 5 - type: integer 
h p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux2_1__parameterized02
 2
02
12\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/mux.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
regfile2
 2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/regfile.v2
98@Z8-6157h px� 
�
!system %s call '%s' not supported38048*oasys2

function2
time2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/regfile.v2
348@Z8-11581h px� 
�
display: %s251*oasys23
10 - A(REG[x]) -  xxxxxxxx, B(REG[x]) -  xxxxxxxx
2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/regfile.v2
348@Z8-251h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
regfile2
 2
02
12`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/regfile.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux2_1__parameterized12
 2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/mux.v2
98@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux2_1__parameterized12
 2
02
12\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/mux.v2
98@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
alu2
 2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/alu.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
alu2
 2
02
12\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/alu.v2
238@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2	
control2
 2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/control.v2
108@Z8-6157h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
opcode2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/control.v2
1098@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2

reserved2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/control.v2
1098@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
control2
 2
02
12`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/control.v2
108@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2	
nanocpu2
 2
02
12`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/nanocpu.v2
108@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
rom2
 2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/rom.v2
128@Z8-6157h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
	prog.list2\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/rom.v2
228@Z8-3876h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
rom2
 2
02
12\
XC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/rom.v2
128@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
memory2
 2_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
108@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

clockDiv2
 2a
]C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/clockDiv.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

clockDiv2
 2
02
12a
]C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/clockDiv.v2
238@Z8-6155h px� 
�
,$readmem data file '%s' is read successfully3426*oasys2
	data.list2_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
518@Z8-3876h px� 
�
synthesizing module '%s'%s4497*oasys2
quadSevenSeg2
 2e
aC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/quadSevenSeg.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
hexTo7Segment2
 2f
bC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/hexTo7Segment.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hexTo7Segment2
 2
02
12f
bC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/hexTo7Segment.v2
238@Z8-6155h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num02e
aC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num12e
aC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num22e
aC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num32e
aC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/quadSevenSeg.v2
658@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
quadSevenSeg2
 2
02
12e
aC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/quadSevenSeg.v2
238@Z8-6155h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num02_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
548@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num12_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
548@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num22_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
548@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num32_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
548@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
sw2_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
548@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
memory2
 2
02
12_
[C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/memory.v2
108@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
nano_sc_system2
 2
02
12g
cC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/nano_sc_system.v2
108@Z8-6155h px� 
�
+Unused sequential element %s was removed. 
4326*oasys2

z_flag_reg2`
\C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.srcs/sources_1/new/nanocpu.v2
818@Z8-6014h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:11 . Memory (MB): peak = 1482.688 ; gain = 562.047
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:11 . Memory (MB): peak = 1482.688 ; gain = 562.047
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:11 . Memory (MB): peak = 1482.688 ; gain = 562.047
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0172

1482.6882
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
Parsing XDC File [%s]
179*designutils2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
sw[12]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
368@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
368@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[12]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
378@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
378@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[13]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
388@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
388@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[13]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
398@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
398@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[14]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
408@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
408@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[14]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
418@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
418@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[15]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
428@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
428@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
sw[15]2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
438@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2
438@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2O
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2M
KC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/Basys3_Master.xdc2"
 .Xil/nano_sc_system_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1518.4612
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0042

1518.4612
0.000Z17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1518.461 ; gain = 597.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Loading part: xc7a35tcpg236-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:20 . Memory (MB): peak = 1518.461 ; gain = 597.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 1518.461 ; gain = 597.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:21 . Memory (MB): peak = 1518.461 ; gain = 597.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   33 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input   31 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit       Adders := 1     
h p
x
� 
&
%s
*synth2
+---XORs : 
h p
x
� 
H
%s
*synth20
.	   2 Input     32 Bit         XORs := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 20    
h p
x
� 
&
%s
*synth2
+---RAMs : 
h p
x
� 
Y
%s
*synth2A
?	             128K Bit	(32769 X 4 bit)          RAMs := 1     
h p
x
� 
W
%s
*synth2?
=	             1024 Bit	(32 X 32 bit)          RAMs := 1     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   3 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	  41 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   30 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   8 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 11    
h p
x
� 
F
%s
*synth2.
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 7     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
p
%s
*synth2X
VPart Resources:
DSPs: 90 (col length:60)
BRAMs: 100 (col length: RAMB18 60 RAMB36 30)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
j
+design %s has port %s driven by constant %s3447*oasys2
nano_sc_system2
dp2
0Z8-3917h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:20 ; elapsed = 00:00:31 . Memory (MB): peak = 1518.461 ; gain = 597.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
X
%s*synth2@
>
Distributed RAM: Preliminary Mapping Report (see note below)
h px� 
�
%s*synth2n
l+---------------+----------------------+-----------+----------------------+-------------------------------+
h px� 
�
%s*synth2o
m|Module Name    | RTL Object           | Inference | Size (Depth x Width) | Primitives                    | 
h px� 
�
%s*synth2n
l+---------------+----------------------+-----------+----------------------+-------------------------------+
h px� 
�
%s*synth2o
m|nano_sc_system | CPU/REGFILE/regs_reg | Implied   | 32 x 32              | RAM32M x 12                   | 
h px� 
�
%s*synth2o
m|nano_sc_system | DATAMEM/mem_reg      | Implied   | 64 K x 4             | RAM16X1S x 4 RAM256X1S x 512  | 
h px� 
�
%s*synth2o
m+---------------+----------------------+-----------+----------------------+-------------------------------+

h px� 
�
%s*synth2�
�Note: The table above is a preliminary report that shows the Distributed RAMs at the current stage of the synthesis flow. Some Distributed RAMs may be reimplemented as non Distributed RAM primitives later in the synthesis flow. Multiple instantiated RAMs are reported only once.
h px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h px� 
l
%s*synth2T
R---------------------------------------------------------------------------------
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:25 ; elapsed = 00:00:38 . Memory (MB): peak = 1518.461 ; gain = 597.820
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:30 ; elapsed = 00:00:45 . Memory (MB): peak = 1597.270 ; gain = 676.629
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
A
%s
*synth2)
'
Distributed RAM: Final Mapping Report
h p
x
� 
�
%s
*synth2n
l+---------------+----------------------+-----------+----------------------+-------------------------------+
h p
x
� 
�
%s
*synth2o
m|Module Name    | RTL Object           | Inference | Size (Depth x Width) | Primitives                    | 
h p
x
� 
�
%s
*synth2n
l+---------------+----------------------+-----------+----------------------+-------------------------------+
h p
x
� 
�
%s
*synth2o
m|nano_sc_system | CPU/REGFILE/regs_reg | Implied   | 32 x 32              | RAM32M x 12                   | 
h p
x
� 
�
%s
*synth2o
m|nano_sc_system | DATAMEM/mem_reg      | Implied   | 64 K x 4             | RAM16X1S x 4 RAM256X1S x 512  | 
h p
x
� 
�
%s
*synth2o
m+---------------+----------------------+-----------+----------------------+-------------------------------+

h p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:31 ; elapsed = 00:00:46 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:35 ; elapsed = 00:00:52 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:35 ; elapsed = 00:00:52 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:35 ; elapsed = 00:00:52 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:35 ; elapsed = 00:00:53 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:35 ; elapsed = 00:00:53 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:35 ; elapsed = 00:00:53 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
5
%s*synth2
+------+----------+------+
h px� 
5
%s*synth2
|      |Cell      |Count |
h px� 
5
%s*synth2
+------+----------+------+
h px� 
5
%s*synth2
|1     |BUFG      |     1|
h px� 
5
%s*synth2
|2     |CARRY4    |    28|
h px� 
5
%s*synth2
|3     |LUT1      |    52|
h px� 
5
%s*synth2
|4     |LUT2      |    43|
h px� 
5
%s*synth2
|5     |LUT3      |    44|
h px� 
5
%s*synth2
|6     |LUT4      |    83|
h px� 
5
%s*synth2
|7     |LUT5      |   211|
h px� 
5
%s*synth2
|8     |LUT6      |   237|
h px� 
5
%s*synth2
|9     |MUXF7     |    95|
h px� 
5
%s*synth2
|10    |MUXF8     |    32|
h px� 
5
%s*synth2
|11    |RAM16X1S  |     4|
h px� 
5
%s*synth2
|12    |RAM256X1S |   512|
h px� 
5
%s*synth2
|13    |RAM32M    |    10|
h px� 
5
%s*synth2
|14    |RAM32X1D  |     4|
h px� 
5
%s*synth2
|15    |FDRE      |    44|
h px� 
5
%s*synth2
|16    |IBUF      |    13|
h px� 
5
%s*synth2
|17    |OBUF      |    12|
h px� 
5
%s*synth2
+------+----------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:35 ; elapsed = 00:00:53 . Memory (MB): peak = 1598.332 ; gain = 677.691
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
`
%s
*synth2H
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:26 ; elapsed = 00:00:50 . Memory (MB): peak = 1598.332 ; gain = 641.918
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:35 ; elapsed = 00:00:53 . Memory (MB): peak = 1598.332 ; gain = 677.691
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0422

1607.3202
0.000Z17-268h px� 
U
-Analyzing %s Unisim elements for replacement
17*netlist2
685Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

1610.9962
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
�  A total of 530 instances were transformed.
  RAM16X1S => RAM32X1S (RAMS32): 4 instances
  RAM256X1S => RAM256X1S (MUXF7(x2), MUXF8, RAMS64E(x4)): 512 instances
  RAM32M => RAM32M (RAMD32(x6), RAMS32(x2)): 10 instances
  RAM32X1D => RAM32X1D (RAMD32(x2)): 4 instances
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

d288d025Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
562
282
82
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:412

00:01:012

1610.9962

1089.586Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0392

1610.9962
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2a
_C:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.runs/synth_1/nano_sc_system.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2g
ereport_utilization -file nano_sc_system_utilization_synth.rpt -pb nano_sc_system_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Oct 15 14:12:37 2024Z17-206h px� 


End Record