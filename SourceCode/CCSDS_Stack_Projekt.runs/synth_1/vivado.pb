
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:092default:default2
00:00:092default:default2
437.0822default:default2
162.9182default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/utils_1/imports/synth_1/TopLevel.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
mC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/utils_1/imports/synth_1/TopLevel.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
u
Command: %s
53*	vivadotcl2D
0synth_design -top TopLevel -part xc7z020clg400-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0202default:defaultZ17-349h px� 
V
Loading part %s157*device2#
xc7z020clg400-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
`
#Helper process launched with PID %s4824*oasys2
143202default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 1284.188 ; gain = 411.445
2default:defaulth px� 
�
synthesizing module '%s'638*oasys2
TopLevel2default:default2y
cC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/TopLevel.vhd2default:default2
142default:default8@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
TM_Generator2default:default2{
gC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/TM_Generator.vhd2default:default2
62default:default2"
U_TM_Generator2default:default2 
TM_Generator2default:default2y
cC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/TopLevel.vhd2default:default2
472default:default8@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2 
TM_Generator2default:default2}
gC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/TM_Generator.vhd2default:default2
242default:default8@Z8-638h px� 
�
synthesizing module '%s'638*oasys2
ASM2default:default2t
^C:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/ASM.vhd2default:default2
112default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
ASM2default:default2
02default:default2
12default:default2t
^C:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/ASM.vhd2default:default2
112default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2#
HeaderGenerator2default:default2�
kC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/Header_Generator.vhd2default:default2
142default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
HeaderGenerator2default:default2
02default:default2
12default:default2�
kC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/Header_Generator.vhd2default:default2
142default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
SecHeaderGen2default:default2}
gC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/SecHeaderGen.vhd2default:default2
422default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
SecHeaderGen2default:default2
02default:default2
12default:default2}
gC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/SecHeaderGen.vhd2default:default2
422default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2#
PacketSequencer2default:default2�
jC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/PacketSequencer.vhd2default:default2
232default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2#
PacketSequencer2default:default2
02default:default2
12default:default2�
jC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/PacketSequencer.vhd2default:default2
232default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2

FIFO_Stack2default:default2{
eC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/FIFO_Stack.vhd2default:default2
252default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

FIFO_Stack2default:default2
02default:default2
12default:default2{
eC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/FIFO_Stack.vhd2default:default2
252default:default8@Z8-256h px� 
�
synthesizing module '%s'638*oasys2 
FECGenerator2default:default2}
gC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/FECGenerator.vhd2default:default2
142default:default8@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
FECGenerator2default:default2
02default:default2
12default:default2}
gC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/FECGenerator.vhd2default:default2
142default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2 
TM_Generator2default:default2
02default:default2
12default:default2}
gC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/TM_Generator.vhd2default:default2
242default:default8@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TopLevel2default:default2
02default:default2
12default:default2y
cC:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/sources_1/new/TopLevel.vhd2default:default2
142default:default8@Z8-256h px� 
�
qTrying to implement RAM '%s' in registers. Block RAM or DRAM implementation is not possible; see log for reasons.3901*oasys2 
fifo_mem_reg2default:defaultZ8-4767h px� 
U
%s
*synth2=
)Reason is one or more of the following :
2default:defaulth p
x
� 
G
%s
*synth2/
	1: Invalid write to RAM. 
2default:defaulth p
x
� 
j
%s
*synth2R
>	2: Unable to determine number of words or word size in RAM. 
2default:defaulth p
x
� 
T
%s
*synth2<
(	3: No valid read/write found for RAM. 
2default:defaulth p
x
� 
X
%s
*synth2@
,RAM "fifo_mem_reg" dissolved into registers
2default:defaulth p
x
� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
clk2default:default2 
SecHeaderGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2
reset2default:default2 
SecHeaderGen2default:defaultZ8-7129h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2%
sec_header_enable2default:default2 
SecHeaderGen2default:defaultZ8-7129h px� 
�
%s*synth2�
zFinished RTL Elaboration : Time (s): cpu = 00:00:40 ; elapsed = 00:00:42 . Memory (MB): peak = 2392.457 ; gain = 1519.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:43 ; elapsed = 00:00:45 . Memory (MB): peak = 2392.457 ; gain = 1519.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:43 ; elapsed = 00:00:45 . Memory (MB): peak = 2392.457 ; gain = 1519.715
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:072default:default2
00:00:072default:default2
2455.0902default:default2
0.0002default:defaultZ17-268h px� 
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
179*designutils2v
`C:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/constrs_1/new/Ports.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2v
`C:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/constrs_1/new/Ports.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2t
`C:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.srcs/constrs_1/new/Ports.xdc2default:default2.
.Xil/TopLevel_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0352default:default2
3271.2342default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.6062default:default2
3271.2342default:default2
0.0002default:defaultZ17-268h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:02:00 ; elapsed = 00:01:56 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Loading part: xc7z020clg400-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:02:00 ; elapsed = 00:01:56 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:02:00 ; elapsed = 00:01:56 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2#
PacketSequencer2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                              001 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                 reading |                              010 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                    done |                              100 |                               10
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2#
PacketSequencer2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:06:49 ; elapsed = 00:06:55 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   13 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit       Adders := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   11 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 1     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	            16400 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	            15760 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               48 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               12 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 4099  
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 7     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
Y
%s
*synth2A
-	   2 Input 32768 Bit        Muxes := 1     
2default:defaulth p
x
� 
Y
%s
*synth2A
-	   7 Input 16400 Bit        Muxes := 1     
2default:defaulth p
x
� 
Y
%s
*synth2A
-	   2 Input 16400 Bit        Muxes := 1     
2default:defaulth p
x
� 
Y
%s
*synth2A
-	   3 Input 15760 Bit        Muxes := 1     
2default:defaulth p
x
� 
Y
%s
*synth2A
-	   2 Input 15760 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   48 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   12 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input   11 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 28676 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 10    
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 220 (col length:60)
BRAMs: 280 (col length: RAMB18 60 RAMB36 30)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
+design %s has port %s driven by constant %s3447*oasys2(
PacketSequencer__GB02default:default2
P[14]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2(
PacketSequencer__GB02default:default2
P[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2(
PacketSequencer__GB02default:default2
P[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2(
PacketSequencer__GB02default:default2
P[0]2default:default2
02default:defaultZ8-3917h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2*
header_index_reg[1]__02default:default2
FDRE2default:default2'
header_index_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2*
header_index_reg[2]__02default:default2
FDRE2default:default2'
header_index_reg[2]2default:defaultZ8-3886h px� 
�
+design %s has port %s driven by constant %s3447*oasys2'
TM_Generator__GCB142default:default2
P[2]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2'
TM_Generator__GCB142default:default2
P[1]2default:default2
02default:defaultZ8-3917h px� 
�
+design %s has port %s driven by constant %s3447*oasys2'
TM_Generator__GCB142default:default2
P[0]2default:default2
02default:defaultZ8-3917h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[0]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[1]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[2]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[3]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[4]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[5]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[6]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4Header_Inst/Transfer_Frame_Data_Field_Status_reg[14]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4Header_Inst/Transfer_Frame_Data_Field_Status_reg[10]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4Header_Inst/Transfer_Frame_Data_Field_Status_reg[12]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[8]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2H
4Header_Inst/Transfer_Frame_Data_Field_Status_reg[13]2default:default2
FDSE2default:default2H
4Header_Inst/Transfer_Frame_Data_Field_Status_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[9]2default:default2
FDRE2default:default2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2G
3Header_Inst/Transfer_Frame_Data_Field_Status_reg[7]2default:default2
FDRE2default:default2H
4Header_Inst/Transfer_Frame_Data_Field_Status_reg[11]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2J
6\Header_Inst/Transfer_Frame_Data_Field_Status_reg[11] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[0]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[1]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[2]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[3]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[4]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[5]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[6]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
FEC_Inst/fec_data_reg[15]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2,
FEC_Inst/fec_data_reg[7]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
FEC_Inst/fec_data_reg[11]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[9]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
FEC_Inst/fec_data_reg[13]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[9]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
\FEC_Inst/fec_data_reg[9] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
FEC_Inst/fec_data_reg[14]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
FEC_Inst/fec_data_reg[10]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[8]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2-
FEC_Inst/fec_data_reg[12]2default:default2
FDCE2default:default2,
FEC_Inst/fec_data_reg[8]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2.
\FEC_Inst/fec_data_reg[8] 2default:defaultZ8-3333h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[0]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[1]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[2]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[3]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[4]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[5]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[6]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[46]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[14]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[30]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[38]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[22]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[42]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[10]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[26]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[34]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[18]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[44]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[12]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[28]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[36]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[20]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[40]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[8]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[24]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[16]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[45]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[13]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[15]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[29]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[37]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[21]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[41]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[9]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[25]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[33]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[17]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[47]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[47]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[43]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[31]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[43]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[39]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[43]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys22
Header_Inst/header_data_reg[7]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[43]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[23]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[43]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[43]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[35]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[11]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[35]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[27]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[35]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys23
Header_Inst/header_data_reg[35]2default:default2
FDCE2default:default23
Header_Inst/header_data_reg[19]2default:defaultZ8-3886h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default25
!\Header_Inst/header_data_reg[19] 2default:defaultZ8-3333h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:16:02 ; elapsed = 00:16:40 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:16:42 ; elapsed = 00:17:21 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:17:13 ; elapsed = 00:17:51 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:17:13 ; elapsed = 00:17:52 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:17:18 ; elapsed = 00:17:57 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:17:18 ; elapsed = 00:17:57 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:17:18 ; elapsed = 00:17:57 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:17:18 ; elapsed = 00:17:57 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:17:18 ; elapsed = 00:17:57 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:17:18 ; elapsed = 00:17:57 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|      |Cell |Count |
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
B
%s*synth2*
|1     |OBUF |     1|
2default:defaulth px� 
B
%s*synth2*
+------+-----+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:17:18 ; elapsed = 00:17:57 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 8 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:15:32 ; elapsed = 00:17:01 . Memory (MB): peak = 3276.688 ; gain = 1519.715
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:17:19 ; elapsed = 00:17:58 . Memory (MB): peak = 3276.688 ; gain = 2403.945
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3276.6882default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
3276.6882default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
a3a883692default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1172default:default2
122default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:17:252default:default2
00:18:072default:default2
3276.6882default:default2
2814.7542default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2q
]C:/Users/marci/Desktop/CCSDS_Projekt/SourceCode/CCSDS_Stack_Projekt.runs/synth_1/TopLevel.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2z
fExecuting : report_utilization -file TopLevel_utilization_synth.rpt -pb TopLevel_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Jun 10 09:06:27 20252default:defaultZ17-206h px� 


End Record