
?
Command: %s
53*	vivadotcl2
place_designZ4-113h px� 

@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
Implementation2	
xc7a35tZ17-347h px� 
o
0Got license for feature '%s' and/or device '%s'
310*common2
Implementation2	
xc7a35tZ17-349h px� 
H
Releasing license: %s
83*common2
ImplementationZ17-83h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
^
,Running DRC as a precondition to command %s
22*	vivadotcl2
place_designZ4-22h px� 
>
Running DRC with %s threads
24*drc2
2Z23-27h px� 
D
DRC finished with %s
79*	vivadotcl2

0 ErrorsZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
k
BMultithreading enabled for place_design using a maximum of %s CPUs12*	placeflow2
2Z30-611h px� 
C

Starting %s Task
103*constraints2
PlacerZ18-103h px� 
R

Phase %s%s
101*constraints2
1 2
Placer InitializationZ18-101h px� 
d

Phase %s%s
101*constraints2
1.1 2'
%Placer Initialization Netlist SortingZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

2016.1602
0.000Z17-268h px� 
a
%s*common2H
FPhase 1.1 Placer Initialization Netlist Sorting | Checksum: 19f6d6775
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.005 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0032

2016.1602
0.000Z17-268h px� 
q

Phase %s%s
101*constraints2
1.2 24
2IO Placement/ Clock Placement/ Build Placer DeviceZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
n
%s*common2U
SPhase 1.2 IO Placement/ Clock Placement/ Build Placer Device | Checksum: 1c004b677
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.629 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
Y

Phase %s%s
101*constraints2
1.3 2
Build Placer Netlist ModelZ18-101h px� 
V
%s*common2=
;Phase 1.3 Build Placer Netlist Model | Checksum: 23f295994
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
V

Phase %s%s
101*constraints2
1.4 2
Constrain Clocks/MacrosZ18-101h px� 
S
%s*common2:
8Phase 1.4 Constrain Clocks/Macros | Checksum: 23f295994
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
O
%s*common26
4Phase 1 Placer Initialization | Checksum: 23f295994
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:02 ; elapsed = 00:00:03 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
M

Phase %s%s
101*constraints2
2 2
Global PlacementZ18-101h px� 
L

Phase %s%s
101*constraints2
2.1 2
FloorplanningZ18-101h px� 
I
%s*common20
.Phase 2.1 Floorplanning | Checksum: 1df0794d1
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
`

Phase %s%s
101*constraints2
2.2 2#
!Update Timing before SLR Path OptZ18-101h px� 
]
%s*common2D
BPhase 2.2 Update Timing before SLR Path Opt | Checksum: 23cdd39a9
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
_

Phase %s%s
101*constraints2
2.3 2"
 Post-Processing in FloorplanningZ18-101h px� 
\
%s*common2C
APhase 2.3 Post-Processing in Floorplanning | Checksum: 23cdd39a9
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:03 ; elapsed = 00:00:04 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
T

Phase %s%s
101*constraints2
2.4 2
Global Placement CoreZ18-101h px� 
g

Phase %s%s
101*constraints2
2.4.1 2(
&UpdateTiming Before Physical SynthesisZ18-101h px� 
d
%s*common2K
IPhase 2.4.1 UpdateTiming Before Physical Synthesis | Checksum: 2b02e558e
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:15 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
]

Phase %s%s
101*constraints2
2.4.2 2
Physical Synthesis In PlacerZ18-101h px� 
v
FFound %s LUTNM shape to break, %s LUT instances to create LUTNM shape
553*physynth2
362
1Z32-1035h px� 
�
YBreak lutnm for timing: one critical %s, two critical %s, total %s, new lutff created %s
561*physynth2
12
352
362
0Z32-1044h px� 
�
^End %s Pass. Optimized %s %s. Breaked %s %s, combined %s existing %s and moved %s existing %s
576*physynth2
12
362
nets or LUTs2
362
LUTs2
02
LUT2
02
LUTZ32-1138h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. The fanout considered for this optimization is changed from %s to %s due to a timing constraint that prevent optimization on all of the loads. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth24
CPU/REGFILE/pc_reg[5]_8CPU/REGFILE/pc_reg[5]_82
25692
5222
5228Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. The fanout considered for this optimization is changed from %s to %s due to a timing constraint that prevent optimization on all of the loads. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth24
CPU/REGFILE/pc_reg[5]_5CPU/REGFILE/pc_reg[5]_52
30812
5222
5228Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. The fanout considered for this optimization is changed from %s to %s due to a timing constraint that prevent optimization on all of the loads. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth24
CPU/REGFILE/pc_reg[5]_7CPU/REGFILE/pc_reg[5]_72
20572
5222
5228Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. The fanout considered for this optimization is changed from %s to %s due to a timing constraint that prevent optimization on all of the loads. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth24
CPU/REGFILE/pc_reg[5]_6CPU/REGFILE/pc_reg[5]_62
20572
5222
5228Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. The fanout considered for this optimization is changed from %s to %s due to a timing constraint that prevent optimization on all of the loads. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2<
CPU/REGFILE/pc_reg[5]_10[3]CPU/REGFILE/pc_reg[5]_10[3]2
20592
5242
5248Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. The fanout considered for this optimization is changed from %s to %s due to a timing constraint that prevent optimization on all of the loads. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2<
CPU/REGFILE/pc_reg[5]_10[2]CPU/REGFILE/pc_reg[5]_10[2]2
20592
5242
5248Z32-1132h px� 
�
�Very high fanout net '%s' is not considered as a candidate in VHFN optimzation. The fanout considered for this optimization is changed from %s to %s due to a timing constraint that prevent optimization on all of the loads. To force replication, set the FORCE_MAX_FANOUT property on the net to a number less than %s.572*physynth2<
CPU/REGFILE/pc_reg[5]_10[1]CPU/REGFILE/pc_reg[5]_10[1]2
20622
5272
5278Z32-1132h px� 
K
)No high fanout nets found in the design.
65*physynthZ32-65h px� 
e
$Optimized %s %s. Created %s new %s.
216*physynth2
02
net2
02

instanceZ32-232h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
j
FNo candidate cells for DSP register optimization found in the design.
274*physynthZ32-456h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
i
DNo candidate cells found for Shift Register to Pipeline optimization564*physynthZ32-1123h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
22
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
^
9No candidate cells found for Shift Register optimization.631*physynthZ32-1401h px� 
h
DNo candidate cells for SRL register optimization found in the design349*physynthZ32-677h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
i
ENo candidate cells for BRAM register optimization found in the design297*physynthZ32-526h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
j
FNo candidate cells for URAM register optimization found in the design
437*physynthZ32-846h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
o
KNo candidate nets found for dynamic/static region interface net replication521*physynthZ32-949h px� 
�
aEnd %s Pass. Optimized %s %s. Created %s new %s, deleted %s existing %s and moved %s existing %s
415*physynth2
12
02
net or cell2
02
cell2
02
cell2
02
cellZ32-775h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

2016.1602
0.000Z17-268h px� 
B
-
Summary of Physical Synthesis Optimizations
*commonh px� 
B
-============================================
*commonh px� 


*commonh px� 


*commonh px� 
�
�-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  Optimization                                     |  Added Cells  |  Removed Cells  |  Optimized Cells/Nets  |  Dont Touch  |  Iterations  |  Elapsed   |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 
�
�|  LUT Combining                                    |           36  |              0  |                    36  |           0  |           1  |  00:00:00  |
|  Retime                                           |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Very High Fanout                                 |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  DSP Register                                     |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register to Pipeline                       |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Shift Register                                   |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  BRAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  URAM Register                                    |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Dynamic/Static Region Interface Net Replication  |            0  |              0  |                     0  |           0  |           1  |  00:00:00  |
|  Total                                            |           36  |              0  |                    36  |           0  |           9  |  00:00:00  |
-----------------------------------------------------------------------------------------------------------------------------------------------------------
*commonh px� 


*commonh px� 


*commonh px� 
Z
%s*common2A
?Phase 2.4.2 Physical Synthesis In Placer | Checksum: 2cfe47149
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:16 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
Q
%s*common28
6Phase 2.4 Global Placement Core | Checksum: 295396741
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
J
%s*common21
/Phase 2 Global Placement | Checksum: 295396741
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:11 ; elapsed = 00:00:17 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
M

Phase %s%s
101*constraints2
3 2
Detail PlacementZ18-101h px� 
Y

Phase %s%s
101*constraints2
3.1 2
Commit Multi Column MacrosZ18-101h px� 
V
%s*common2=
;Phase 3.1 Commit Multi Column Macros | Checksum: 214c10f61
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:12 ; elapsed = 00:00:18 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
[

Phase %s%s
101*constraints2
3.2 2
Commit Most Macros & LUTRAMsZ18-101h px� 
X
%s*common2?
=Phase 3.2 Commit Most Macros & LUTRAMs | Checksum: 235e5f0ca
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:15 ; elapsed = 00:00:24 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
U

Phase %s%s
101*constraints2
3.3 2
Area Swap OptimizationZ18-101h px� 
R
%s*common29
7Phase 3.3 Area Swap Optimization | Checksum: 314e54fa8
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:15 ; elapsed = 00:00:24 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
]

Phase %s%s
101*constraints2
3.4 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.4 Pipeline Register Optimization | Checksum: 2ce85bddc
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:15 ; elapsed = 00:00:25 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
P

Phase %s%s
101*constraints2
3.5 2
Fast OptimizationZ18-101h px� 
M
%s*common24
2Phase 3.5 Fast Optimization | Checksum: 28e6f2689
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:34 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
[

Phase %s%s
101*constraints2
3.6 2
Small Shape Detail PlacementZ18-101h px� 
X
%s*common2?
=Phase 3.6 Small Shape Detail Placement | Checksum: 223004df3
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:35 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
Q

Phase %s%s
101*constraints2
3.7 2
Re-assign LUT pinsZ18-101h px� 
N
%s*common25
3Phase 3.7 Re-assign LUT pins | Checksum: 18721edc3
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:35 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
]

Phase %s%s
101*constraints2
3.8 2 
Pipeline Register OptimizationZ18-101h px� 
Z
%s*common2A
?Phase 3.8 Pipeline Register Optimization | Checksum: 1db6f28c2
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:20 ; elapsed = 00:00:35 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
P

Phase %s%s
101*constraints2
3.9 2
Fast OptimizationZ18-101h px� 
M
%s*common24
2Phase 3.9 Fast Optimization | Checksum: 21e32dbfe
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:26 ; elapsed = 00:00:45 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
J
%s*common21
/Phase 3 Detail Placement | Checksum: 21e32dbfe
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:26 ; elapsed = 00:00:45 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
e

Phase %s%s
101*constraints2
4 2*
(Post Placement Optimization and Clean-UpZ18-101h px� 
W

Phase %s%s
101*constraints2
4.1 2
Post Commit OptimizationZ18-101h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
\

Phase %s%s
101*constraints2
4.1.1 2
Post Placement OptimizationZ18-101h px� 
V
APost Placement Optimization Initialization | Checksum: 278b3afb1
*commonh px� 
Q

Phase %s%s
101*constraints2

4.1.1.1 2
BUFG InsertionZ18-101h px� 
O

Starting %s Task
103*constraints2
Physical SynthesisZ18-103h px� 
^

Phase %s%s
101*constraints2
1 2#
!Physical Synthesis InitializationZ18-101h px� 
n
EMultithreading enabled for phys_opt_design using a maximum of %s CPUs380*physynth2
2Z32-721h px� 
u
(%s %s Timing Summary | WNS=%s | TNS=%s |333*physynth2
	Estimated2
 2
-7.6262

-18105.857Z32-619h px� 
[
%s*common2B
@Phase 1 Physical Synthesis Initialization | Checksum: 1bc1bfe4d
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.407 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
�
�BUFG insertion identified %s candidate nets. Inserted BUFG: %s, Replicated BUFG Driver: %s, Skipped due to Placement/Routing Conflicts: %s, Skipped due to Timing Degradation: %s, Skipped due to netlist editing failed: %s.43*	placeflow2
02
02
02
02
02
0Z46-56h px� 
P
%s*common27
5Ending Physical Synthesis Task | Checksum: 289cb348f
h px� 
�

%s
*constraints2a
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.563 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
N
%s*common25
3Phase 4.1.1.1 BUFG Insertion | Checksum: 278b3afb1
h px� 
}

%s
*constraints2]
[Time (s): cpu = 00:00:27 ; elapsed = 00:00:47 . Memory (MB): peak = 2016.160 ; gain = 0.000h px� 
e

Phase %s%s
101*constraints2

4.1.1.2 2$
"Post Placement Timing OptimizationZ18-101h px� 
�
hPost Placement Timing Summary WNS=%s. For the most accurate timing information please run report_timing.610*place2
-6.077Z30-746h px� 
b
%s*common2I
GPhase 4.1.1.2 Post Placement Timing Optimization | Checksum: 26a5f94f4
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
T
%s*common2;
9Phase 4.1 Post Commit Optimization | Checksum: 26a5f94f4
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
U

Phase %s%s
101*constraints2
4.2 2
Post Placement CleanupZ18-101h px� 
R
%s*common29
7Phase 4.2 Post Placement Cleanup | Checksum: 26a5f94f4
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
O

Phase %s%s
101*constraints2
4.3 2
Placer ReportingZ18-101h px� 
[

Phase %s%s
101*constraints2
4.3.1 2
Print Estimated CongestionZ18-101h px� 
�
'Post-Placement Estimated Congestion %s
38*	placeflow2�
�
 ____________________________________________________
|           | Global Congestion | Short Congestion  |
| Direction | Region Size       | Region Size       |
|___________|___________________|___________________|
|      North|                1x1|                1x1|
|___________|___________________|___________________|
|      South|                1x1|                1x1|
|___________|___________________|___________________|
|       East|                1x1|                1x1|
|___________|___________________|___________________|
|       West|                1x1|                1x1|
|___________|___________________|___________________|
Z30-612h px� 
X
%s*common2?
=Phase 4.3.1 Print Estimated Congestion | Checksum: 26a5f94f4
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
L
%s*common23
1Phase 4.3 Placer Reporting | Checksum: 26a5f94f4
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
V

Phase %s%s
101*constraints2
4.4 2
Final Placement CleanupZ18-101h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

2042.1762
0.000Z17-268h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
b
%s*common2I
GPhase 4 Post Placement Optimization and Clean-Up | Checksum: 1eb082b3e
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
D
%s*common2+
)Ending Placer Task | Checksum: 1dcec637f
h px� 
~

%s
*constraints2^
\Time (s): cpu = 00:00:48 ; elapsed = 00:01:15 . Memory (MB): peak = 2042.176 ; gain = 26.016h px� 
~
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
782
82
82
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
place_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
place_design: 2

00:00:502

00:01:182

2042.1762
26.016Z17-268h px� 
�
)Running report commands "%s" in parallel.56334*	planAhead24
2report_control_sets, report_io, report_utilizationZ12-24838h px� 
Y
+Running report generation with %s threads.
56333*	planAhead2
2Z12-24831h px� 
p
Executing command : %s
56330*	planAhead2.
,report_io -file nano_sc_system_io_placed.rptZ12-24828h px� 
�
kreport_io: Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.060 . Memory (MB): peak = 2042.297 ; gain = 0.051
*commonh px� 
�
Executing command : %s
56330*	planAhead2i
greport_utilization -file nano_sc_system_utilization_placed.rpt -pb nano_sc_system_utilization_placed.pbZ12-24828h px� 
�
Executing command : %s
56330*	planAhead2K
Ireport_control_sets -verbose -file nano_sc_system_control_sets_placed.rptZ12-24828h px� 
�
ureport_control_sets: Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.044 . Memory (MB): peak = 2042.395 ; gain = 0.023
*commonh px� 
H
&Writing timing data to binary archive.266*timingZ38-480h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0432

2060.0862
0.035Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PlaceDB: 2

00:00:012
00:00:00.5262

2061.9802
1.895Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote PulsedLatchDB: 2

00:00:002

00:00:002

2061.9802
0.000Z17-268h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote RouteStorage: 2

00:00:002
00:00:00.0232

2061.9802
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Netlist Cache: 2

00:00:002
00:00:00.0052

2061.9802
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Wrote Device Cache: 2

00:00:002
00:00:00.0072

2061.9802
0.000Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write Physdb Complete: 2

00:00:012
00:00:00.5702

2061.9802
1.930Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2g
eC:/Users/OarChula/Documents/GitHub/2110363-HWSynLab/lab05/lab05.runs/impl_1/nano_sc_system_placed.dcpZ17-1381h px� 


End Record