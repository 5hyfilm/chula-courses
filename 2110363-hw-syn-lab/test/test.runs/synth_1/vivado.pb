
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:052

00:00:102	
514.1802	
221.918Z17-268h px� 
�
Command: %s
1870*	planAhead2|
zread_checkpoint -auto_incremental -incremental C:/Users/OarChula/Desktop/test/test.srcs/utils_1/imports/synth_1/system.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2M
KC:/Users/OarChula/Desktop/test/test.srcs/utils_1/imports/synth_1/system.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
a
Command: %s
53*	vivadotcl20
.synth_design -top system -part xc7a35tcpg236-1Z4-113h px� 
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
3468Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:04 ; elapsed = 00:00:08 . Memory (MB): peak = 1367.816 ; gain = 448.855
h px� 
�
.redeclaration of ANSI port '%s' is not allowed7382*oasys2

segments2J
FC:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/hexTo7Segment.v2
288@Z8-11121h px� 
�
*overwriting previous definition of %s '%s'6131*oasys2
module2
quadSevenSeg2B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1538@Z8-9873h px� 
�
2previous definition of design element '%s' is here6195*oasys2
quadSevenSeg2B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
838@Z8-9937h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
pop2
wire2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
push2
wire2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-11241h px� 
�
5undeclared symbol '%s', assumed default net type '%s'7502*oasys2
reset2
wire2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-11241h px� 
�
synthesizing module '%s'%s4497*oasys2
system2
 2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
quadSevenSeg2
 2B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
848@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
hexTo7Segment2
 2J
FC:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/hexTo7Segment.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hexTo7Segment2
 2
02
12J
FC:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/hexTo7Segment.v2
238@Z8-6155h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num02B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1348@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num12B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1348@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num22B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1348@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
num32B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1348@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
dp02B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1448@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
dp12B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1448@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
dp22B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1448@Z8-567h px� 
�
8referenced signal '%s' should be on the sensitivity list567*oasys2
dp32B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
1448@Z8-567h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
quadSevenSeg2
 2
02
12B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/utils.v2
848@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
an02
12
quadSevenSeg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
an12
12
quadSevenSeg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
an22
12
quadSevenSeg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
42
an32
12
quadSevenSeg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-689h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
12
num02
42
quadSevenSeg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-689h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
num12
quadSevenSeg2
q7seg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
num22
quadSevenSeg2
q7seg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
num32
quadSevenSeg2
q7seg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-7071h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
clk2
quadSevenSeg2
q7seg2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
q7seg2
quadSevenSeg2
152
112C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
418@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
stack2
 2B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/stack.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
stack2
 2
02
12B
>C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/stack.v2
238@Z8-6155h px� 
�
Pwidth (%s) of port connection '%s' does not match port width (%s) of module '%s'689*oasys2
82
din2
162
stack2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-689h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
system2
 2
02
12C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
238@Z8-6155h px� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2	
mem_regZ8-4767h px� 
C
%s
*synth2+
)Reason is one or more of the following :
h p
x
� 
�
%s
*synth2�
~	1: RAM has multiple writes via different ports in same process. If RAM inferencing intended, write to one port per process. 
h p
x
� 
X
%s
*synth2@
>	2: Unable to determine number of words or word size in RAM. 
h p
x
� 
B
%s
*synth2*
(	3: No valid read/write found for RAM. 
h p
x
� 
A
%s
*synth2)
'RAM "mem_reg" dissolved into registers
h p
x
� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
an02
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
328@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
an12
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
328@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
an22
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
328@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
an32
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
328@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
	targetClk2
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
358@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
pop2
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
push2
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
reset2
system2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-3848h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[15]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[14]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[13]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[12]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[11]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[10]2
stackZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
din[9]2
stackZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
din[8]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2
systemZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2
systemZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
systemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
systemZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:11 . Memory (MB): peak = 1499.875 ; gain = 580.914
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:06 ; elapsed = 00:00:11 . Memory (MB): peak = 1499.875 ; gain = 580.914
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
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:06 ; elapsed = 00:00:11 . Memory (MB): peak = 1499.875 ; gain = 580.914
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
00:00:00.0572

1499.8752
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
179*designutils2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
btnC2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1118@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1118@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnC2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1128@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1128@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnU2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1138@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1138@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnU2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1148@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1148@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnD2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1198@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1198@Z17-55h px�
�
No ports matched '%s'.
584*	planAhead2
btnD2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1208@Z12-584h px�
�
"'%s' expects at least one object.
55*common2
set_property2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
1208@Z17-55h px�
�
Finished Parsing XDC File [%s]
178*designutils2L
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2J
HC:/Users/OarChula/Desktop/test/test.srcs/constrs_1/new/Basys3_Master.xdc2
.Xil/system_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1601.9842
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
00:00:00.0142

1601.9842
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
Finished Constraint Validation : Time (s): cpu = 00:00:12 ; elapsed = 00:00:22 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:12 ; elapsed = 00:00:22 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:12 ; elapsed = 00:00:22 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:16 ; elapsed = 00:00:29 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
,	   2 Input    8 Bit       Adders := 2     
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
.	                8 Bit    Registers := 257   
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
,	   2 Input 2048 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    8 Bit        Muxes := 4     
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
,	   4 Input    1 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 1     
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
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[15]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[14]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[13]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[12]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[11]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
din[10]2
stackZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
din[9]2
stackZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
din[8]2
stackZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[15]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[14]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[13]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[12]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[11]2
systemZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[10]2
systemZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[9]2
systemZ8-7129h px� 
n
9Port %s in module %s is either unconnected or has no load4866*oasys2
sw[8]2
systemZ8-7129h px� 
l
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2
systemZ8-7129h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[7]2
1st2

s1/addr[7]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[7]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
addr[7]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[6]2
1st2

s1/addr[6]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[6]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
addr[6]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[5]2
1st2

s1/addr[5]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[5]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
addr[5]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[3]2
1st2

s1/addr[3]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[3]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
addr[3]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[2]2
1st2

s1/addr[2]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[2]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
addr[2]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[1]2
1st2

s1/addr[1]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
addr[1]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
addr[1]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[7]2
1st2

s1/dout[7]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[7]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
dout[7]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[6]2
1st2

s1/dout[6]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[6]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
dout[6]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[5]2
1st2

s1/dout[5]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[5]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
dout[5]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[3]2
1st2

s1/dout[3]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[3]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
dout[3]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[2]2
1st2

s1/dout[2]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[2]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
dout[2]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[1]2
1st2

s1/dout[1]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
2multi-driven net on pin %s with %s driver pin '%s'4708*oasys2	
dout[1]2
2nd2
GND2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6859h px� 
�
rmulti-driven net %s is connected to at least one constant driver which has been preserved, other driver is ignored4707*oasys2	
dout[1]2C
?C:/Users/OarChula/Desktop/test/test.srcs/sources_1/new/system.v2
438@Z8-6858h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:21 ; elapsed = 00:00:40 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:26 ; elapsed = 00:00:48 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
}Finished Timing Optimization : Time (s): cpu = 00:00:26 ; elapsed = 00:00:48 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
|Finished Technology Mapping : Time (s): cpu = 00:00:26 ; elapsed = 00:00:48 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
vFinished IO Insertion : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
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
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|      |Cell |Count |
h px� 
0
%s*synth2
+------+-----+------+
h px� 
0
%s*synth2
|1     |OBUF |    12|
h px� 
0
%s*synth2
+------+-----+------+
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
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 36 critical warnings and 18 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:23 ; elapsed = 00:00:52 . Memory (MB): peak = 1601.984 ; gain = 580.914
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:30 ; elapsed = 00:00:55 . Memory (MB): peak = 1601.984 ; gain = 683.023
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

00:00:002

00:00:002

1601.9842
0.000Z17-268h px� 
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

00:00:002

00:00:002

1601.9842
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

4c1bc594Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322
702
432
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:342

00:01:022

1601.9842

1083.332Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0012

1601.9842
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2=
;C:/Users/OarChula/Desktop/test/test.runs/synth_1/system.dcpZ17-1381h px� 
�
Executing command : %s
56330*	planAhead2W
Ureport_utilization -file system_utilization_synth.rpt -pb system_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Tue Oct  8 15:22:58 2024Z17-206h px� 


End Record