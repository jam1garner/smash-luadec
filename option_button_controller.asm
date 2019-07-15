[func root]
u0 = r0
[0] GETTABUP R0 R0 [str="UiScriptPlayer"]
[1] GETTABLE R0 R0 [str="require"]
[2] LOADK R1 [str="common/ui_common"]
[3] CALL R0 R2 R2
[4] SETTABUP R0 [str="layout_view"] nil
[5] GETTABUP R1 R0 [str="SCENE_EXIT_CODE_NONE"]
[6] SETTABUP R0 [str="exit_code"] R1
[7] SETTABUP R0 [str="button_is_edited"] nil
[8] SETTABUP R0 [str="updated_button_id"] nil
[9] LOADNIL R1 R3 R0
[10] LOADBOOL R5 false R0
[11] CLOSURE R6 0
[12] CLOSURE R7 1
[13] CLOSURE R8 2
[14] CLOSURE R9 3
[15] CLOSURE R10 4
[16] CLOSURE R11 5
[17] CLOSURE R12 6
[18] CLOSURE R13 7
[19] CLOSURE R14 8
[20] CLOSURE R15 9
[21] CLOSURE R16 10
[22] CLOSURE R17 11
[23] CLOSURE R18 12
[24] CLOSURE R19 13
[25] CLOSURE R20 14
[26] CLOSURE R21 15
[27] CLOSURE R22 16
[28] CLOSURE R23 17
[29] SETTABUP R0 [str="main"] R23
[30] LOADNIL R23 R0 R0
[31] CLOSURE R24 18
[32] SETTABUP R0 [str="select_button_func"] R24
[33] RETURN R0 R1 R0
k0 = [str="UiScriptPlayer"]
k1 = [str="require"]
k2 = [str="common/ui_common"]
k3 = [str="layout_view"]
k4 = nil
k5 = [str="exit_code"]
k6 = [str="SCENE_EXIT_CODE_NONE"]
k7 = [str="button_is_edited"]
k8 = [str="updated_button_id"]
k9 = [str="main"]
k10 = [str="select_button_func"]

[func CLOSURE_0]
u0 = u0
[0] LOADK R1 [str="ctr_normal_sel_"]
[1] GETTABUP R2 R0 [str="IS_PRO"]
[2] EQ R0 R2 [bool=true]
[3] JMP R0 1
[4] LOADK R1 [str="ctr_pro_sel_"]
[5] GETTABUP R2 R0 [str="layout_root"]
[6] SELF R2 R2 [str="get_root_view"]
[7] CALL R2 R2 R2
[8] SETTABUP R0 [str="layout_view"] R2
[9] GETTABUP R2 R0 [str="BUTTON_ID_FK_TRIGGER_L"]
[10] EQ R0 R0 R2
[11] JMP R0 8
[12] GETTABUP R2 R0 [str="layout_view"]
[13] SELF R2 R2 [str="play_animation"]
[14] MOVE R4 R1 R0
[15] LOADK R5 [str="l"]
[16] CONCAT R4 R4 R5
[17] LOADK R5 [float=1]
[18] CALL R2 R4 R1
[19] JMP R0 128
[20] GETTABUP R2 R0 [str="BUTTON_ID_FK_TRIGGER_R"]
[21] EQ R0 R0 R2
[22] JMP R0 8
[23] GETTABUP R2 R0 [str="layout_view"]
[24] SELF R2 R2 [str="play_animation"]
[25] MOVE R4 R1 R0
[26] LOADK R5 [str="r"]
[27] CONCAT R4 R4 R5
[28] LOADK R5 [float=1]
[29] CALL R2 R4 R1
[30] JMP R0 117
[31] GETTABUP R2 R0 [str="BUTTON_ID_FK_TRIGGER_ZL"]
[32] EQ R0 R0 R2
[33] JMP R0 8
[34] GETTABUP R2 R0 [str="layout_view"]
[35] SELF R2 R2 [str="play_animation"]
[36] MOVE R4 R1 R0
[37] LOADK R5 [str="zl"]
[38] CONCAT R4 R4 R5
[39] LOADK R5 [float=1]
[40] CALL R2 R4 R1
[41] JMP R0 106
[42] GETTABUP R2 R0 [str="BUTTON_ID_FK_TRIGGER_ZR"]
[43] EQ R0 R0 R2
[44] JMP R0 8
[45] GETTABUP R2 R0 [str="layout_view"]
[46] SELF R2 R2 [str="play_animation"]
[47] MOVE R4 R1 R0
[48] LOADK R5 [str="zr"]
[49] CONCAT R4 R4 R5
[50] LOADK R5 [float=1]
[51] CALL R2 R4 R1
[52] JMP R0 95
[53] GETTABUP R2 R0 [str="BUTTON_ID_FK_UP"]
[54] EQ R0 R0 R2
[55] JMP R0 8
[56] GETTABUP R2 R0 [str="layout_view"]
[57] SELF R2 R2 [str="play_animation"]
[58] MOVE R4 R1 R0
[59] LOADK R5 [str="ct"]
[60] CONCAT R4 R4 R5
[61] LOADK R5 [float=1]
[62] CALL R2 R4 R1
[63] JMP R0 84
[64] GETTABUP R2 R0 [str="BUTTON_ID_FK_SIDE"]
[65] EQ R0 R0 R2
[66] JMP R0 8
[67] GETTABUP R2 R0 [str="layout_view"]
[68] SELF R2 R2 [str="play_animation"]
[69] MOVE R4 R1 R0
[70] LOADK R5 [str="clr"]
[71] CONCAT R4 R4 R5
[72] LOADK R5 [float=1]
[73] CALL R2 R4 R1
[74] JMP R0 73
[75] GETTABUP R2 R0 [str="BUTTON_ID_FK_DOWN"]
[76] EQ R0 R0 R2
[77] JMP R0 8
[78] GETTABUP R2 R0 [str="layout_view"]
[79] SELF R2 R2 [str="play_animation"]
[80] MOVE R4 R1 R0
[81] LOADK R5 [str="cb"]
[82] CONCAT R4 R4 R5
[83] LOADK R5 [float=1]
[84] CALL R2 R4 R1
[85] JMP R0 62
[86] GETTABUP R2 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[87] EQ R0 R0 R2
[88] JMP R0 8
[89] GETTABUP R2 R0 [str="layout_view"]
[90] SELF R2 R2 [str="play_animation"]
[91] MOVE R4 R1 R0
[92] LOADK R5 [str="a"]
[93] CONCAT R4 R4 R5
[94] LOADK R5 [float=1]
[95] CALL R2 R4 R1
[96] JMP R0 51
[97] GETTABUP R2 R0 [str="BUTTON_ID_FK_BUTTON_B"]
[98] EQ R0 R0 R2
[99] JMP R0 8
[100] GETTABUP R2 R0 [str="layout_view"]
[101] SELF R2 R2 [str="play_animation"]
[102] MOVE R4 R1 R0
[103] LOADK R5 [str="b"]
[104] CONCAT R4 R4 R5
[105] LOADK R5 [float=1]
[106] CALL R2 R4 R1
[107] JMP R0 40
[108] GETTABUP R2 R0 [str="BUTTON_ID_FK_STICK_R"]
[109] EQ R0 R0 R2
[110] JMP R0 8
[111] GETTABUP R2 R0 [str="layout_view"]
[112] SELF R2 R2 [str="play_animation"]
[113] MOVE R4 R1 R0
[114] LOADK R5 [str="sr"]
[115] CONCAT R4 R4 R5
[116] LOADK R5 [float=1]
[117] CALL R2 R4 R1
[118] JMP R0 29
[119] GETTABUP R2 R0 [str="BUTTON_ID_FK_BUTTON_X"]
[120] EQ R0 R0 R2
[121] JMP R0 8
[122] GETTABUP R2 R0 [str="layout_view"]
[123] SELF R2 R2 [str="play_animation"]
[124] MOVE R4 R1 R0
[125] LOADK R5 [str="x"]
[126] CONCAT R4 R4 R5
[127] LOADK R5 [float=1]
[128] CALL R2 R4 R1
[129] JMP R0 18
[130] GETTABUP R2 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[131] EQ R0 R0 R2
[132] JMP R0 8
[133] GETTABUP R2 R0 [str="layout_view"]
[134] SELF R2 R2 [str="play_animation"]
[135] MOVE R4 R1 R0
[136] LOADK R5 [str="y"]
[137] CONCAT R4 R4 R5
[138] LOADK R5 [float=1]
[139] CALL R2 R4 R1
[140] JMP R0 7
[141] GETTABUP R2 R0 [str="layout_view"]
[142] SELF R2 R2 [str="play_animation"]
[143] MOVE R4 R1 R0
[144] LOADK R5 [str="off"]
[145] CONCAT R4 R4 R5
[146] LOADK R5 [float=1]
[147] CALL R2 R4 R1
[148] RETURN R0 R1 R0
k0 = [str="ctr_normal_sel_"]
k1 = [str="IS_PRO"]
k2 = [bool=true]
k3 = [str="ctr_pro_sel_"]
k4 = [str="layout_view"]
k5 = [str="layout_root"]
k6 = [str="get_root_view"]
k7 = [str="BUTTON_ID_FK_TRIGGER_L"]
k8 = [str="play_animation"]
k9 = [str="l"]
k10 = [float=1]
k11 = [str="BUTTON_ID_FK_TRIGGER_R"]
k12 = [str="r"]
k13 = [str="BUTTON_ID_FK_TRIGGER_ZL"]
k14 = [str="zl"]
k15 = [str="BUTTON_ID_FK_TRIGGER_ZR"]
k16 = [str="zr"]
k17 = [str="BUTTON_ID_FK_UP"]
k18 = [str="ct"]
k19 = [str="BUTTON_ID_FK_SIDE"]
k20 = [str="clr"]
k21 = [str="BUTTON_ID_FK_DOWN"]
k22 = [str="cb"]
k23 = [str="BUTTON_ID_FK_BUTTON_A"]
k24 = [str="a"]
k25 = [str="BUTTON_ID_FK_BUTTON_B"]
k26 = [str="b"]
k27 = [str="BUTTON_ID_FK_STICK_R"]
k28 = [str="sr"]
k29 = [str="BUTTON_ID_FK_BUTTON_X"]
k30 = [str="x"]
k31 = [str="BUTTON_ID_FK_BUTTON_Y"]
k32 = [str="y"]
k33 = [str="off"]

[func CLOSURE_1]
u0 = u0
[0] LOADK R1 [str="ctr_joy_sel_"]
[1] GETTABUP R2 R0 [str="layout_root"]
[2] SELF R2 R2 [str="get_root_view"]
[3] CALL R2 R2 R2
[4] SETTABUP R0 [str="layout_view"] R2
[5] GETTABUP R2 R0 [str="BUTTON_ID_JC_TRIGGER_LR"]
[6] EQ R0 R0 R2
[7] JMP R0 15
[8] GETTABUP R2 R0 [str="layout_view"]
[9] SELF R2 R2 [str="play_animation"]
[10] MOVE R4 R1 R0
[11] LOADK R5 [str="l"]
[12] CONCAT R4 R4 R5
[13] LOADK R5 [float=1]
[14] CALL R2 R4 R1
[15] GETTABUP R2 R0 [str="layout_view"]
[16] SELF R2 R2 [str="play_animation"]
[17] MOVE R4 R1 R0
[18] LOADK R5 [str="r"]
[19] CONCAT R4 R4 R5
[20] LOADK R5 [float=1]
[21] CALL R2 R4 R1
[22] JMP R0 91
[23] GETTABUP R2 R0 [str="BUTTON_ID_JC_TRIGGER_ZLR"]
[24] EQ R0 R0 R2
[25] JMP R0 15
[26] GETTABUP R2 R0 [str="layout_view"]
[27] SELF R2 R2 [str="play_animation"]
[28] MOVE R4 R1 R0
[29] LOADK R5 [str="zl"]
[30] CONCAT R4 R4 R5
[31] LOADK R5 [float=1]
[32] CALL R2 R4 R1
[33] GETTABUP R2 R0 [str="layout_view"]
[34] SELF R2 R2 [str="play_animation"]
[35] MOVE R4 R1 R0
[36] LOADK R5 [str="zr"]
[37] CONCAT R4 R4 R5
[38] LOADK R5 [float=1]
[39] CALL R2 R4 R1
[40] JMP R0 73
[41] GETTABUP R2 R0 [str="BUTTON_ID_JC_TRIGGER_SL"]
[42] EQ R0 R0 R2
[43] JMP R0 8
[44] GETTABUP R2 R0 [str="layout_view"]
[45] SELF R2 R2 [str="play_animation"]
[46] MOVE R4 R1 R0
[47] LOADK R5 [str="sl"]
[48] CONCAT R4 R4 R5
[49] LOADK R5 [float=1]
[50] CALL R2 R4 R1
[51] JMP R0 62
[52] GETTABUP R2 R0 [str="BUTTON_ID_JC_TRIGGER_SR"]
[53] EQ R0 R0 R2
[54] JMP R0 8
[55] GETTABUP R2 R0 [str="layout_view"]
[56] SELF R2 R2 [str="play_animation"]
[57] MOVE R4 R1 R0
[58] LOADK R5 [str="sr"]
[59] CONCAT R4 R4 R5
[60] LOADK R5 [float=1]
[61] CALL R2 R4 R1
[62] JMP R0 51
[63] GETTABUP R2 R0 [str="BUTTON_ID_JC_UP"]
[64] EQ R0 R0 R2
[65] JMP R0 8
[66] GETTABUP R2 R0 [str="layout_view"]
[67] SELF R2 R2 [str="play_animation"]
[68] MOVE R4 R1 R0
[69] LOADK R5 [str="ct"]
[70] CONCAT R4 R4 R5
[71] LOADK R5 [float=1]
[72] CALL R2 R4 R1
[73] JMP R0 40
[74] GETTABUP R2 R0 [str="BUTTON_ID_JC_RIGHT"]
[75] EQ R0 R0 R2
[76] JMP R0 8
[77] GETTABUP R2 R0 [str="layout_view"]
[78] SELF R2 R2 [str="play_animation"]
[79] MOVE R4 R1 R0
[80] LOADK R5 [str="cr"]
[81] CONCAT R4 R4 R5
[82] LOADK R5 [float=1]
[83] CALL R2 R4 R1
[84] JMP R0 29
[85] GETTABUP R2 R0 [str="BUTTON_ID_JC_LEFT"]
[86] EQ R0 R0 R2
[87] JMP R0 8
[88] GETTABUP R2 R0 [str="layout_view"]
[89] SELF R2 R2 [str="play_animation"]
[90] MOVE R4 R1 R0
[91] LOADK R5 [str="cl"]
[92] CONCAT R4 R4 R5
[93] LOADK R5 [float=1]
[94] CALL R2 R4 R1
[95] JMP R0 18
[96] GETTABUP R2 R0 [str="BUTTON_ID_JC_DOWN"]
[97] EQ R0 R0 R2
[98] JMP R0 8
[99] GETTABUP R2 R0 [str="layout_view"]
[100] SELF R2 R2 [str="play_animation"]
[101] MOVE R4 R1 R0
[102] LOADK R5 [str="cb"]
[103] CONCAT R4 R4 R5
[104] LOADK R5 [float=1]
[105] CALL R2 R4 R1
[106] JMP R0 7
[107] GETTABUP R2 R0 [str="layout_view"]
[108] SELF R2 R2 [str="play_animation"]
[109] MOVE R4 R1 R0
[110] LOADK R5 [str="off"]
[111] CONCAT R4 R4 R5
[112] LOADK R5 [float=1]
[113] CALL R2 R4 R1
[114] RETURN R0 R1 R0
k0 = [str="ctr_joy_sel_"]
k1 = [str="layout_view"]
k2 = [str="layout_root"]
k3 = [str="get_root_view"]
k4 = [str="BUTTON_ID_JC_TRIGGER_LR"]
k5 = [str="play_animation"]
k6 = [str="l"]
k7 = [float=1]
k8 = [str="r"]
k9 = [str="BUTTON_ID_JC_TRIGGER_ZLR"]
k10 = [str="zl"]
k11 = [str="zr"]
k12 = [str="BUTTON_ID_JC_TRIGGER_SL"]
k13 = [str="sl"]
k14 = [str="BUTTON_ID_JC_TRIGGER_SR"]
k15 = [str="sr"]
k16 = [str="BUTTON_ID_JC_UP"]
k17 = [str="ct"]
k18 = [str="BUTTON_ID_JC_RIGHT"]
k19 = [str="cr"]
k20 = [str="BUTTON_ID_JC_LEFT"]
k21 = [str="cl"]
k22 = [str="BUTTON_ID_JC_DOWN"]
k23 = [str="cb"]
k24 = [str="off"]

[func CLOSURE_2]
u0 = u0
[0] LOADK R1 [str="ctr_gc_sel_"]
[1] GETTABUP R2 R0 [str="layout_root"]
[2] SELF R2 R2 [str="get_root_view"]
[3] CALL R2 R2 R2
[4] SETTABUP R0 [str="layout_view"] R2
[5] GETTABUP R2 R0 [str="BUTTON_ID_GC_TRIGGER_L"]
[6] EQ R0 R0 R2
[7] JMP R0 8
[8] GETTABUP R2 R0 [str="layout_view"]
[9] SELF R2 R2 [str="play_animation"]
[10] MOVE R4 R1 R0
[11] LOADK R5 [str="l"]
[12] CONCAT R4 R4 R5
[13] LOADK R5 [float=1]
[14] CALL R2 R4 R1
[15] JMP R0 117
[16] GETTABUP R2 R0 [str="BUTTON_ID_GC_TRIGGER_R"]
[17] EQ R0 R0 R2
[18] JMP R0 8
[19] GETTABUP R2 R0 [str="layout_view"]
[20] SELF R2 R2 [str="play_animation"]
[21] MOVE R4 R1 R0
[22] LOADK R5 [str="r"]
[23] CONCAT R4 R4 R5
[24] LOADK R5 [float=1]
[25] CALL R2 R4 R1
[26] JMP R0 106
[27] GETTABUP R2 R0 [str="BUTTON_ID_GC_TRIGGER_Z"]
[28] EQ R0 R0 R2
[29] JMP R0 8
[30] GETTABUP R2 R0 [str="layout_view"]
[31] SELF R2 R2 [str="play_animation"]
[32] MOVE R4 R1 R0
[33] LOADK R5 [str="z"]
[34] CONCAT R4 R4 R5
[35] LOADK R5 [float=1]
[36] CALL R2 R4 R1
[37] JMP R0 95
[38] GETTABUP R2 R0 [str="BUTTON_ID_GC_UP"]
[39] EQ R0 R0 R2
[40] JMP R0 8
[41] GETTABUP R2 R0 [str="layout_view"]
[42] SELF R2 R2 [str="play_animation"]
[43] MOVE R4 R1 R0
[44] LOADK R5 [str="ct"]
[45] CONCAT R4 R4 R5
[46] LOADK R5 [float=1]
[47] CALL R2 R4 R1
[48] JMP R0 84
[49] GETTABUP R2 R0 [str="BUTTON_ID_GC_SIDE"]
[50] EQ R0 R0 R2
[51] JMP R0 8
[52] GETTABUP R2 R0 [str="layout_view"]
[53] SELF R2 R2 [str="play_animation"]
[54] MOVE R4 R1 R0
[55] LOADK R5 [str="clr"]
[56] CONCAT R4 R4 R5
[57] LOADK R5 [float=1]
[58] CALL R2 R4 R1
[59] JMP R0 73
[60] GETTABUP R2 R0 [str="BUTTON_ID_GC_DOWN"]
[61] EQ R0 R0 R2
[62] JMP R0 8
[63] GETTABUP R2 R0 [str="layout_view"]
[64] SELF R2 R2 [str="play_animation"]
[65] MOVE R4 R1 R0
[66] LOADK R5 [str="cb"]
[67] CONCAT R4 R4 R5
[68] LOADK R5 [float=1]
[69] CALL R2 R4 R1
[70] JMP R0 62
[71] GETTABUP R2 R0 [str="BUTTON_ID_GC_BUTTON_A"]
[72] EQ R0 R0 R2
[73] JMP R0 8
[74] GETTABUP R2 R0 [str="layout_view"]
[75] SELF R2 R2 [str="play_animation"]
[76] MOVE R4 R1 R0
[77] LOADK R5 [str="a"]
[78] CONCAT R4 R4 R5
[79] LOADK R5 [float=1]
[80] CALL R2 R4 R1
[81] JMP R0 51
[82] GETTABUP R2 R0 [str="BUTTON_ID_GC_BUTTON_B"]
[83] EQ R0 R0 R2
[84] JMP R0 8
[85] GETTABUP R2 R0 [str="layout_view"]
[86] SELF R2 R2 [str="play_animation"]
[87] MOVE R4 R1 R0
[88] LOADK R5 [str="b"]
[89] CONCAT R4 R4 R5
[90] LOADK R5 [float=1]
[91] CALL R2 R4 R1
[92] JMP R0 40
[93] GETTABUP R2 R0 [str="BUTTON_ID_GC_STICK_C"]
[94] EQ R0 R0 R2
[95] JMP R0 8
[96] GETTABUP R2 R0 [str="layout_view"]
[97] SELF R2 R2 [str="play_animation"]
[98] MOVE R4 R1 R0
[99] LOADK R5 [str="c"]
[100] CONCAT R4 R4 R5
[101] LOADK R5 [float=1]
[102] CALL R2 R4 R1
[103] JMP R0 29
[104] GETTABUP R2 R0 [str="BUTTON_ID_GC_BUTTON_X"]
[105] EQ R0 R0 R2
[106] JMP R0 8
[107] GETTABUP R2 R0 [str="layout_view"]
[108] SELF R2 R2 [str="play_animation"]
[109] MOVE R4 R1 R0
[110] LOADK R5 [str="x"]
[111] CONCAT R4 R4 R5
[112] LOADK R5 [float=1]
[113] CALL R2 R4 R1
[114] JMP R0 18
[115] GETTABUP R2 R0 [str="BUTTON_ID_GC_BUTTON_Y"]
[116] EQ R0 R0 R2
[117] JMP R0 8
[118] GETTABUP R2 R0 [str="layout_view"]
[119] SELF R2 R2 [str="play_animation"]
[120] MOVE R4 R1 R0
[121] LOADK R5 [str="y"]
[122] CONCAT R4 R4 R5
[123] LOADK R5 [float=1]
[124] CALL R2 R4 R1
[125] JMP R0 7
[126] GETTABUP R2 R0 [str="layout_view"]
[127] SELF R2 R2 [str="play_animation"]
[128] MOVE R4 R1 R0
[129] LOADK R5 [str="off"]
[130] CONCAT R4 R4 R5
[131] LOADK R5 [float=1]
[132] CALL R2 R4 R1
[133] RETURN R0 R1 R0
k0 = [str="ctr_gc_sel_"]
k1 = [str="layout_view"]
k2 = [str="layout_root"]
k3 = [str="get_root_view"]
k4 = [str="BUTTON_ID_GC_TRIGGER_L"]
k5 = [str="play_animation"]
k6 = [str="l"]
k7 = [float=1]
k8 = [str="BUTTON_ID_GC_TRIGGER_R"]
k9 = [str="r"]
k10 = [str="BUTTON_ID_GC_TRIGGER_Z"]
k11 = [str="z"]
k12 = [str="BUTTON_ID_GC_UP"]
k13 = [str="ct"]
k14 = [str="BUTTON_ID_GC_SIDE"]
k15 = [str="clr"]
k16 = [str="BUTTON_ID_GC_DOWN"]
k17 = [str="cb"]
k18 = [str="BUTTON_ID_GC_BUTTON_A"]
k19 = [str="a"]
k20 = [str="BUTTON_ID_GC_BUTTON_B"]
k21 = [str="b"]
k22 = [str="BUTTON_ID_GC_STICK_C"]
k23 = [str="c"]
k24 = [str="BUTTON_ID_GC_BUTTON_X"]
k25 = [str="x"]
k26 = [str="BUTTON_ID_GC_BUTTON_Y"]
k27 = [str="y"]
k28 = [str="off"]

[func CLOSURE_3]
u0 = u0
u1 = r6
u2 = r7
u3 = r8
[0] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[1] EQ R0 R0 R2
[2] JMP R0 4
[3] GETUPVAL R2 R1 R0
[4] MOVE R3 R1 R0
[5] CALL R2 R2 R1
[6] JMP R0 13
[7] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[8] EQ R0 R0 R2
[9] JMP R0 4
[10] GETUPVAL R2 R2 R0
[11] MOVE R3 R1 R0
[12] CALL R2 R2 R1
[13] JMP R0 6
[14] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[15] EQ R0 R0 R2
[16] JMP R0 3
[17] GETUPVAL R2 R3 R0
[18] MOVE R3 R1 R0
[19] CALL R2 R2 R1
[20] RETURN R0 R1 R0
k0 = [str="CONTROLLER_FULL_KEY"]
k1 = [str="CONTROLLER_JOY_CON"]
k2 = [str="CONTROLLER_GC_CON"]

[func CLOSURE_4]
u0 = u0
[0] GETTABUP R1 R0 [str="BUTTON_ID_JC_TRIGGER_LR"]
[1] EQ R1 R0 R1
[2] JMP R0 4
[3] GETTABUP R1 R0 [str="BUTTON_ID_JC_TRIGGER_ZLR"]
[4] EQ R1 R0 R1
[5] JMP R0 1
[6] LOADBOOL R1 false R1
[7] LOADBOOL R1 true R0
[8] RETURN R1 R2 R0
[9] RETURN R0 R1 R0
k0 = [str="BUTTON_ID_JC_TRIGGER_LR"]
k1 = [str="BUTTON_ID_JC_TRIGGER_ZLR"]

[func CLOSURE_5]
u0 = u0
[0] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[1] EQ R0 R0 R2
[2] JMP R0 7
[3] GETTABUP R2 R0 [str="BUTTON_ID_FK_STICK_R"]
[4] EQ R1 R1 R2
[5] JMP R0 1
[6] LOADBOOL R2 false R1
[7] LOADBOOL R2 true R0
[8] RETURN R2 R2 R0
[9] JMP R0 15
[10] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[11] EQ R0 R0 R2
[12] JMP R0 3
[13] LOADBOOL R2 false R0
[14] RETURN R2 R2 R0
[15] JMP R0 9
[16] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[17] EQ R0 R0 R2
[18] JMP R0 6
[19] GETTABUP R2 R0 [str="BUTTON_ID_GC_STICK_C"]
[20] EQ R1 R1 R2
[21] JMP R0 1
[22] LOADBOOL R2 false R1
[23] LOADBOOL R2 true R0
[24] RETURN R2 R2 R0
[25] RETURN R0 R1 R0
k0 = [str="CONTROLLER_FULL_KEY"]
k1 = [str="BUTTON_ID_FK_STICK_R"]
k2 = [str="CONTROLLER_JOY_CON"]
k3 = [str="CONTROLLER_GC_CON"]
k4 = [str="BUTTON_ID_GC_STICK_C"]

[func CLOSURE_6]
u0 = u0
u1 = r11
[0] SELF R3 R2 [str="get_pane"]
[1] LOADK R5 [str="set_txt_name_00"]
[2] CALL R3 R3 R2
[3] GETTABUP R4 R0 [str="UiScriptPlayer"]
[4] GETTABLE R4 R4 [str="invoke"]
[5] LOADK R5 [str="get_operation"]
[6] MOVE R6 R0 R0
[7] MOVE R7 R1 R0
[8] CALL R4 R4 R2
[9] GETTABUP R5 R0 [str="OPERATE_ATTACK"]
[10] EQ R0 R4 R5
[11] JMP R0 14
[12] GETUPVAL R5 R1 R0
[13] MOVE R6 R0 R0
[14] MOVE R7 R1 R0
[15] CALL R5 R3 R2
[16] EQ R0 R5 [bool=true]
[17] JMP R0 4
[18] SELF R5 R3 [str="set_text_message"]
[19] GETTABUP R7 R0 [str="MSG_LABEL_ATTACK_STRONG"]
[20] CALL R5 R3 R1
[21] JMP R0 94
[22] SELF R5 R3 [str="set_text_message"]
[23] GETTABUP R7 R0 [str="MSG_LABEL_ATTACK"]
[24] CALL R5 R3 R1
[25] JMP R0 90
[26] GETTABUP R5 R0 [str="OPERATE_SPECIAL"]
[27] EQ R0 R4 R5
[28] JMP R0 4
[29] SELF R5 R3 [str="set_text_message"]
[30] GETTABUP R7 R0 [str="MSG_LABEL_SPECIAL"]
[31] CALL R5 R3 R1
[32] JMP R0 83
[33] GETTABUP R5 R0 [str="OPERATE_JUMP"]
[34] EQ R0 R4 R5
[35] JMP R0 4
[36] SELF R5 R3 [str="set_text_message"]
[37] GETTABUP R7 R0 [str="MSG_LABEL_JUMP"]
[38] CALL R5 R3 R1
[39] JMP R0 76
[40] GETTABUP R5 R0 [str="OPERATE_GUARD"]
[41] EQ R0 R4 R5
[42] JMP R0 4
[43] SELF R5 R3 [str="set_text_message"]
[44] GETTABUP R7 R0 [str="MSG_LABEL_GUARD"]
[45] CALL R5 R3 R1
[46] JMP R0 69
[47] GETTABUP R5 R0 [str="OPERATE_CATCH"]
[48] EQ R0 R4 R5
[49] JMP R0 4
[50] SELF R5 R3 [str="set_text_message"]
[51] GETTABUP R7 R0 [str="MSG_LABEL_CATCH"]
[52] CALL R5 R3 R1
[53] JMP R0 62
[54] GETTABUP R5 R0 [str="OPERATE_SMASH"]
[55] EQ R0 R4 R5
[56] JMP R0 4
[57] SELF R5 R3 [str="set_text_message"]
[58] GETTABUP R7 R0 [str="MSG_LABEL_SMASH"]
[59] CALL R5 R3 R1
[60] JMP R0 55
[61] GETTABUP R5 R0 [str="OPERATE_SMASH_UP"]
[62] EQ R0 R4 R5
[63] JMP R0 4
[64] SELF R5 R3 [str="set_text_message"]
[65] GETTABUP R7 R0 [str="MSG_LABEL_SMASH_UP"]
[66] CALL R5 R3 R1
[67] JMP R0 48
[68] GETTABUP R5 R0 [str="OPERATE_SMASH_SIDE"]
[69] EQ R0 R4 R5
[70] JMP R0 4
[71] SELF R5 R3 [str="set_text_message"]
[72] GETTABUP R7 R0 [str="MSG_LABEL_SMASH_SIDE"]
[73] CALL R5 R3 R1
[74] JMP R0 41
[75] GETTABUP R5 R0 [str="OPERATE_SMASH_DOWN"]
[76] EQ R0 R4 R5
[77] JMP R0 4
[78] SELF R5 R3 [str="set_text_message"]
[79] GETTABUP R7 R0 [str="MSG_LABEL_SMASH_DOWN"]
[80] CALL R5 R3 R1
[81] JMP R0 34
[82] GETTABUP R5 R0 [str="OPERATE_APPEAL"]
[83] EQ R0 R4 R5
[84] JMP R0 4
[85] SELF R5 R3 [str="set_text_message"]
[86] GETTABUP R7 R0 [str="MSG_LABEL_APPEAL"]
[87] CALL R5 R3 R1
[88] JMP R0 27
[89] GETTABUP R5 R0 [str="OPERATE_APPEAL_UP"]
[90] EQ R0 R4 R5
[91] JMP R0 4
[92] SELF R5 R3 [str="set_text_message"]
[93] GETTABUP R7 R0 [str="MSG_LABEL_APPEAL_UP"]
[94] CALL R5 R3 R1
[95] JMP R0 20
[96] GETTABUP R5 R0 [str="OPERATE_APPEAL_SIDE"]
[97] EQ R0 R4 R5
[98] JMP R0 4
[99] SELF R5 R3 [str="set_text_message"]
[100] GETTABUP R7 R0 [str="MSG_LABEL_APPEAL_SIDE"]
[101] CALL R5 R3 R1
[102] JMP R0 13
[103] GETTABUP R5 R0 [str="OPERATE_APPEAL_DOWN"]
[104] EQ R0 R4 R5
[105] JMP R0 4
[106] SELF R5 R3 [str="set_text_message"]
[107] GETTABUP R7 R0 [str="MSG_LABEL_APPEAL_DOWN"]
[108] CALL R5 R3 R1
[109] JMP R0 6
[110] GETTABUP R5 R0 [str="OPERATE_NONE"]
[111] EQ R0 R4 R5
[112] JMP R0 3
[113] SELF R5 R3 [str="set_text_message"]
[114] GETTABUP R7 R0 [str="MSG_LABEL_NONE"]
[115] CALL R5 R3 R1
[116] RETURN R0 R1 R0
k0 = [str="get_pane"]
k1 = [str="set_txt_name_00"]
k2 = [str="UiScriptPlayer"]
k3 = [str="invoke"]
k4 = [str="get_operation"]
k5 = [str="OPERATE_ATTACK"]
k6 = [bool=true]
k7 = [str="set_text_message"]
k8 = [str="MSG_LABEL_ATTACK_STRONG"]
k9 = [str="MSG_LABEL_ATTACK"]
k10 = [str="OPERATE_SPECIAL"]
k11 = [str="MSG_LABEL_SPECIAL"]
k12 = [str="OPERATE_JUMP"]
k13 = [str="MSG_LABEL_JUMP"]
k14 = [str="OPERATE_GUARD"]
k15 = [str="MSG_LABEL_GUARD"]
k16 = [str="OPERATE_CATCH"]
k17 = [str="MSG_LABEL_CATCH"]
k18 = [str="OPERATE_SMASH"]
k19 = [str="MSG_LABEL_SMASH"]
k20 = [str="OPERATE_SMASH_UP"]
k21 = [str="MSG_LABEL_SMASH_UP"]
k22 = [str="OPERATE_SMASH_SIDE"]
k23 = [str="MSG_LABEL_SMASH_SIDE"]
k24 = [str="OPERATE_SMASH_DOWN"]
k25 = [str="MSG_LABEL_SMASH_DOWN"]
k26 = [str="OPERATE_APPEAL"]
k27 = [str="MSG_LABEL_APPEAL"]
k28 = [str="OPERATE_APPEAL_UP"]
k29 = [str="MSG_LABEL_APPEAL_UP"]
k30 = [str="OPERATE_APPEAL_SIDE"]
k31 = [str="MSG_LABEL_APPEAL_SIDE"]
k32 = [str="OPERATE_APPEAL_DOWN"]
k33 = [str="MSG_LABEL_APPEAL_DOWN"]
k34 = [str="OPERATE_NONE"]
k35 = [str="MSG_LABEL_NONE"]

[func CLOSURE_7]
u0 = u0
u1 = r1
u2 = r12
[0] GETTABUP R3 R0 [str="layout_root"]
[1] SELF R3 R3 [str="get_root_view"]
[2] CALL R3 R2 R2
[3] SETTABUP R0 [str="layout_view"] R3
[4] GETTABUP R3 R0 [str="layout_view"]
[5] SELF R3 R3 [str="get_parts"]
[6] GETUPVAL R5 R1 R0
[7] SELF R5 R5 [str="get_button"]
[8] MOVE R7 R1 R0
[9] CALL R5 R3 R2
[10] SELF R5 R5 [str="get_name"]
[11] CALL R5 R2 R0
[12] CALL R3 R0 R2
[13] GETUPVAL R4 R2 R0
[14] MOVE R5 R0 R0
[15] MOVE R6 R1 R0
[16] MOVE R7 R3 R0
[17] CALL R4 R4 R1
[18] LOADBOOL R4 true R0
[19] EQ R0 R2 [bool=true]
[20] JMP R0 1
[21] JMP R0 11
[22] EQ R0 R2 [bool=false]
[23] JMP R0 2
[24] LOADBOOL R4 false R0
[25] JMP R0 7
[26] GETTABUP R5 R0 [str="UiScriptPlayer"]
[27] GETTABLE R5 R5 [str="invoke"]
[28] LOADK R6 [str="is_button_setting_changed"]
[29] MOVE R7 R0 R0
[30] MOVE R8 R1 R0
[31] CALL R5 R4 R2
[32] MOVE R4 R5 R0
[33] EQ R0 R4 [bool=true]
[34] JMP R0 5
[35] SELF R5 R3 [str="play_animation"]
[36] LOADK R7 [str="check_on"]
[37] LOADK R8 [float=1]
[38] CALL R5 R4 R1
[39] JMP R0 4
[40] SELF R5 R3 [str="play_animation"]
[41] LOADK R7 [str="check_off"]
[42] LOADK R8 [float=1]
[43] CALL R5 R4 R1
[44] RETURN R0 R1 R0
k0 = [str="layout_view"]
k1 = [str="layout_root"]
k2 = [str="get_root_view"]
k3 = [str="get_parts"]
k4 = [str="get_button"]
k5 = [str="get_name"]
k6 = [bool=true]
k7 = [bool=false]
k8 = [str="UiScriptPlayer"]
k9 = [str="invoke"]
k10 = [str="is_button_setting_changed"]
k11 = [str="play_animation"]
k12 = [str="check_on"]
k13 = [float=1]
k14 = [str="check_off"]

[func CLOSURE_8]
u0 = u0
u1 = r1
[0] GETTABUP R1 R0 [str="layout_root"]
[1] SELF R1 R1 [str="get_root_view"]
[2] CALL R1 R2 R2
[3] SETTABUP R0 [str="layout_view"] R1
[4] GETTABUP R1 R0 [str="layout_view"]
[5] SELF R1 R1 [str="get_parts"]
[6] GETUPVAL R3 R1 R0
[7] SELF R3 R3 [str="get_button"]
[8] GETTABUP R5 R0 [str="BUTTON_ID_OPTION"]
[9] CALL R3 R3 R2
[10] SELF R3 R3 [str="get_name"]
[11] CALL R3 R2 R0
[12] CALL R1 R0 R2
[13] SELF R2 R1 [str="get_parts"]
[14] LOADK R4 [str="option_com_lct_icn_00"]
[15] CALL R2 R3 R2
[16] SELF R3 R1 [str="get_parts"]
[17] LOADK R5 [str="option_com_lct_icn_01"]
[18] CALL R3 R3 R2
[19] SELF R4 R1 [str="get_parts"]
[20] LOADK R6 [str="option_com_lct_icn_02"]
[21] CALL R4 R3 R2
[22] SELF R5 R1 [str="get_parts"]
[23] LOADK R7 [str="option_com_lct_icn_03"]
[24] CALL R5 R3 R2
[25] GETTABUP R6 R0 [str="UiScriptPlayer"]
[26] GETTABLE R6 R6 [str="invoke"]
[27] LOADK R7 [str="get_option_vibration"]
[28] MOVE R8 R0 R0
[29] CALL R6 R3 R2
[30] EQ R0 R6 [bool=true]
[31] JMP R0 5
[32] SELF R6 R2 [str="play_animation"]
[33] LOADK R8 [str="icn_col_on"]
[34] LOADK R9 [float=1]
[35] CALL R6 R4 R1
[36] JMP R0 4
[37] SELF R6 R2 [str="play_animation"]
[38] LOADK R8 [str="icn_col_off"]
[39] LOADK R9 [float=1]
[40] CALL R6 R4 R1
[41] GETTABUP R6 R0 [str="UiScriptPlayer"]
[42] GETTABLE R6 R6 [str="invoke"]
[43] LOADK R7 [str="get_option_smash_attack"]
[44] MOVE R8 R0 R0
[45] CALL R6 R3 R2
[46] EQ R0 R6 [bool=true]
[47] JMP R0 5
[48] SELF R6 R3 [str="play_animation"]
[49] LOADK R8 [str="icn_col_on"]
[50] LOADK R9 [float=1]
[51] CALL R6 R4 R1
[52] JMP R0 4
[53] SELF R6 R3 [str="play_animation"]
[54] LOADK R8 [str="icn_col_off"]
[55] LOADK R9 [float=1]
[56] CALL R6 R4 R1
[57] GETTABUP R6 R0 [str="UiScriptPlayer"]
[58] GETTABLE R6 R6 [str="invoke"]
[59] LOADK R7 [str="get_option_flick_up_jump"]
[60] MOVE R8 R0 R0
[61] CALL R6 R3 R2
[62] EQ R0 R6 [bool=true]
[63] JMP R0 5
[64] SELF R6 R4 [str="play_animation"]
[65] LOADK R8 [str="icn_col_on"]
[66] LOADK R9 [float=1]
[67] CALL R6 R4 R1
[68] JMP R0 4
[69] SELF R6 R4 [str="play_animation"]
[70] LOADK R8 [str="icn_col_off"]
[71] LOADK R9 [float=1]
[72] CALL R6 R4 R1
[73] GETTABUP R6 R0 [str="UiScriptPlayer"]
[74] GETTABLE R6 R6 [str="invoke"]
[75] LOADK R7 [str="get_option_flick_sensor"]
[76] MOVE R8 R0 R0
[77] CALL R6 R3 R2
[78] GETTABUP R7 R0 [str="FLICK_SENSOR_NORMAL"]
[79] EQ R0 R6 R7
[80] JMP R0 5
[81] SELF R6 R5 [str="play_animation"]
[82] LOADK R8 [str="icn_col_off"]
[83] LOADK R9 [float=1]
[84] CALL R6 R4 R1
[85] JMP R0 4
[86] SELF R6 R5 [str="play_animation"]
[87] LOADK R8 [str="icn_col_on"]
[88] LOADK R9 [float=1]
[89] CALL R6 R4 R1
[90] RETURN R0 R1 R0
k0 = [str="layout_view"]
k1 = [str="layout_root"]
k2 = [str="get_root_view"]
k3 = [str="get_parts"]
k4 = [str="get_button"]
k5 = [str="BUTTON_ID_OPTION"]
k6 = [str="get_name"]
k7 = [str="option_com_lct_icn_00"]
k8 = [str="option_com_lct_icn_01"]
k9 = [str="option_com_lct_icn_02"]
k10 = [str="option_com_lct_icn_03"]
k11 = [str="UiScriptPlayer"]
k12 = [str="invoke"]
k13 = [str="get_option_vibration"]
k14 = [bool=true]
k15 = [str="play_animation"]
k16 = [str="icn_col_on"]
k17 = [float=1]
k18 = [str="icn_col_off"]
k19 = [str="get_option_smash_attack"]
k20 = [str="get_option_flick_up_jump"]
k21 = [str="get_option_flick_sensor"]
k22 = [str="FLICK_SENSOR_NORMAL"]

[func CLOSURE_9]
u0 = u0
u1 = r13
u2 = r14
[0] GETTABUP R1 R0 [str="UiScriptPlayer"]
[1] GETTABLE R1 R1 [str="invoke"]
[2] LOADK R2 [str="restore_settings"]
[3] MOVE R3 R0 R0
[4] CALL R1 R3 R1
[5] GETTABUP R1 R0 [str="CONTROLLER_FULL_KEY"]
[6] EQ R0 R0 R1
[7] JMP R0 61
[8] GETUPVAL R1 R1 R0
[9] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[10] GETTABUP R3 R0 [str="BUTTON_ID_FK_TRIGGER_L"]
[11] LOADNIL R4 R0 R0
[12] CALL R1 R4 R1
[13] GETUPVAL R1 R1 R0
[14] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[15] GETTABUP R3 R0 [str="BUTTON_ID_FK_TRIGGER_R"]
[16] LOADNIL R4 R0 R0
[17] CALL R1 R4 R1
[18] GETUPVAL R1 R1 R0
[19] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[20] GETTABUP R3 R0 [str="BUTTON_ID_FK_TRIGGER_ZL"]
[21] LOADNIL R4 R0 R0
[22] CALL R1 R4 R1
[23] GETUPVAL R1 R1 R0
[24] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[25] GETTABUP R3 R0 [str="BUTTON_ID_FK_TRIGGER_ZR"]
[26] LOADNIL R4 R0 R0
[27] CALL R1 R4 R1
[28] GETUPVAL R1 R1 R0
[29] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[30] GETTABUP R3 R0 [str="BUTTON_ID_FK_UP"]
[31] LOADNIL R4 R0 R0
[32] CALL R1 R4 R1
[33] GETUPVAL R1 R1 R0
[34] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[35] GETTABUP R3 R0 [str="BUTTON_ID_FK_SIDE"]
[36] LOADNIL R4 R0 R0
[37] CALL R1 R4 R1
[38] GETUPVAL R1 R1 R0
[39] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[40] GETTABUP R3 R0 [str="BUTTON_ID_FK_DOWN"]
[41] LOADNIL R4 R0 R0
[42] CALL R1 R4 R1
[43] GETUPVAL R1 R1 R0
[44] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[45] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[46] LOADNIL R4 R0 R0
[47] CALL R1 R4 R1
[48] GETUPVAL R1 R1 R0
[49] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[50] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_B"]
[51] LOADNIL R4 R0 R0
[52] CALL R1 R4 R1
[53] GETUPVAL R1 R1 R0
[54] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[55] GETTABUP R3 R0 [str="BUTTON_ID_FK_STICK_R"]
[56] LOADNIL R4 R0 R0
[57] CALL R1 R4 R1
[58] GETUPVAL R1 R1 R0
[59] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[60] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_X"]
[61] LOADNIL R4 R0 R0
[62] CALL R1 R4 R1
[63] GETUPVAL R1 R1 R0
[64] GETTABUP R2 R0 [str="CONTROLLER_FULL_KEY"]
[65] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[66] LOADNIL R4 R0 R0
[67] CALL R1 R4 R1
[68] JMP R0 102
[69] GETTABUP R1 R0 [str="CONTROLLER_JOY_CON"]
[70] EQ R0 R0 R1
[71] JMP R0 41
[72] GETUPVAL R1 R1 R0
[73] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[74] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_LR"]
[75] LOADNIL R4 R0 R0
[76] CALL R1 R4 R1
[77] GETUPVAL R1 R1 R0
[78] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[79] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_ZLR"]
[80] LOADNIL R4 R0 R0
[81] CALL R1 R4 R1
[82] GETUPVAL R1 R1 R0
[83] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[84] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_SL"]
[85] LOADNIL R4 R0 R0
[86] CALL R1 R4 R1
[87] GETUPVAL R1 R1 R0
[88] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[89] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_SR"]
[90] LOADNIL R4 R0 R0
[91] CALL R1 R4 R1
[92] GETUPVAL R1 R1 R0
[93] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[94] GETTABUP R3 R0 [str="BUTTON_ID_JC_UP"]
[95] LOADNIL R4 R0 R0
[96] CALL R1 R4 R1
[97] GETUPVAL R1 R1 R0
[98] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[99] GETTABUP R3 R0 [str="BUTTON_ID_JC_RIGHT"]
[100] LOADNIL R4 R0 R0
[101] CALL R1 R4 R1
[102] GETUPVAL R1 R1 R0
[103] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[104] GETTABUP R3 R0 [str="BUTTON_ID_JC_LEFT"]
[105] LOADNIL R4 R0 R0
[106] CALL R1 R4 R1
[107] GETUPVAL R1 R1 R0
[108] GETTABUP R2 R0 [str="CONTROLLER_JOY_CON"]
[109] GETTABUP R3 R0 [str="BUTTON_ID_JC_DOWN"]
[110] LOADNIL R4 R0 R0
[111] CALL R1 R4 R1
[112] JMP R0 58
[113] GETTABUP R1 R0 [str="CONTROLLER_GC_CON"]
[114] EQ R0 R0 R1
[115] JMP R0 55
[116] GETUPVAL R1 R1 R0
[117] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[118] GETTABUP R3 R0 [str="BUTTON_ID_GC_TRIGGER_L"]
[119] LOADNIL R4 R0 R0
[120] CALL R1 R4 R1
[121] GETUPVAL R1 R1 R0
[122] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[123] GETTABUP R3 R0 [str="BUTTON_ID_GC_TRIGGER_R"]
[124] LOADNIL R4 R0 R0
[125] CALL R1 R4 R1
[126] GETUPVAL R1 R1 R0
[127] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[128] GETTABUP R3 R0 [str="BUTTON_ID_GC_TRIGGER_Z"]
[129] LOADNIL R4 R0 R0
[130] CALL R1 R4 R1
[131] GETUPVAL R1 R1 R0
[132] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[133] GETTABUP R3 R0 [str="BUTTON_ID_GC_UP"]
[134] LOADNIL R4 R0 R0
[135] CALL R1 R4 R1
[136] GETUPVAL R1 R1 R0
[137] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[138] GETTABUP R3 R0 [str="BUTTON_ID_GC_SIDE"]
[139] LOADNIL R4 R0 R0
[140] CALL R1 R4 R1
[141] GETUPVAL R1 R1 R0
[142] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[143] GETTABUP R3 R0 [str="BUTTON_ID_GC_DOWN"]
[144] LOADNIL R4 R0 R0
[145] CALL R1 R4 R1
[146] GETUPVAL R1 R1 R0
[147] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[148] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_A"]
[149] LOADNIL R4 R0 R0
[150] CALL R1 R4 R1
[151] GETUPVAL R1 R1 R0
[152] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[153] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_B"]
[154] LOADNIL R4 R0 R0
[155] CALL R1 R4 R1
[156] GETUPVAL R1 R1 R0
[157] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[158] GETTABUP R3 R0 [str="BUTTON_ID_GC_STICK_C"]
[159] LOADNIL R4 R0 R0
[160] CALL R1 R4 R1
[161] GETUPVAL R1 R1 R0
[162] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[163] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_X"]
[164] LOADNIL R4 R0 R0
[165] CALL R1 R4 R1
[166] GETUPVAL R1 R1 R0
[167] GETTABUP R2 R0 [str="CONTROLLER_GC_CON"]
[168] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_Y"]
[169] LOADNIL R4 R0 R0
[170] CALL R1 R4 R1
[171] GETUPVAL R1 R2 R0
[172] MOVE R2 R0 R0
[173] CALL R1 R2 R1
[174] RETURN R0 R1 R0
k0 = [str="UiScriptPlayer"]
k1 = [str="invoke"]
k2 = [str="restore_settings"]
k3 = [str="CONTROLLER_FULL_KEY"]
k4 = [str="BUTTON_ID_FK_TRIGGER_L"]
k5 = [str="BUTTON_ID_FK_TRIGGER_R"]
k6 = [str="BUTTON_ID_FK_TRIGGER_ZL"]
k7 = [str="BUTTON_ID_FK_TRIGGER_ZR"]
k8 = [str="BUTTON_ID_FK_UP"]
k9 = [str="BUTTON_ID_FK_SIDE"]
k10 = [str="BUTTON_ID_FK_DOWN"]
k11 = [str="BUTTON_ID_FK_BUTTON_A"]
k12 = [str="BUTTON_ID_FK_BUTTON_B"]
k13 = [str="BUTTON_ID_FK_STICK_R"]
k14 = [str="BUTTON_ID_FK_BUTTON_X"]
k15 = [str="BUTTON_ID_FK_BUTTON_Y"]
k16 = [str="CONTROLLER_JOY_CON"]
k17 = [str="BUTTON_ID_JC_TRIGGER_LR"]
k18 = [str="BUTTON_ID_JC_TRIGGER_ZLR"]
k19 = [str="BUTTON_ID_JC_TRIGGER_SL"]
k20 = [str="BUTTON_ID_JC_TRIGGER_SR"]
k21 = [str="BUTTON_ID_JC_UP"]
k22 = [str="BUTTON_ID_JC_RIGHT"]
k23 = [str="BUTTON_ID_JC_LEFT"]
k24 = [str="BUTTON_ID_JC_DOWN"]
k25 = [str="CONTROLLER_GC_CON"]
k26 = [str="BUTTON_ID_GC_TRIGGER_L"]
k27 = [str="BUTTON_ID_GC_TRIGGER_R"]
k28 = [str="BUTTON_ID_GC_TRIGGER_Z"]
k29 = [str="BUTTON_ID_GC_UP"]
k30 = [str="BUTTON_ID_GC_SIDE"]
k31 = [str="BUTTON_ID_GC_DOWN"]
k32 = [str="BUTTON_ID_GC_BUTTON_A"]
k33 = [str="BUTTON_ID_GC_BUTTON_B"]
k34 = [str="BUTTON_ID_GC_STICK_C"]
k35 = [str="BUTTON_ID_GC_BUTTON_X"]
k36 = [str="BUTTON_ID_GC_BUTTON_Y"]

[func CLOSURE_10]
u0 = u0
u1 = r1
u2 = r2
u3 = r3
u4 = r4
u5 = r5
u6 = r13
u7 = r14
[0] GETTABUP R1 R0 [str="layout_root"]
[1] SELF R1 R1 [str="get_root_view"]
[2] CALL R1 R2 R2
[3] SETTABUP R0 [str="layout_view"] R1
[4] GETTABUP R1 R0 [str="layout_view"]
[5] SELF R1 R1 [str="stop_animation_frame"]
[6] LOADK R3 [str="in"]
[7] LOADK R4 [float=0]
[8] CALL R1 R4 R1
[9] GETUPVAL R1 R1 R0
[10] EQ R0 R1 nil
[11] JMP R0 4
[12] GETTABUP R1 R0 [str="LayoutButtonSelector"]
[13] SELF R1 R1 [str="new"]
[14] CALL R1 R2 R2
[15] SETUPVAL R1 R1 R0
[16] GETUPVAL R1 R2 R0
[17] EQ R0 R1 nil
[18] JMP R0 6
[19] GETTABUP R1 R0 [str="LayoutButtonSelectorConfig"]
[20] SELF R1 R1 [str="new"]
[21] CALL R1 R2 R2
[22] SETUPVAL R1 R2 R0
[23] SETTABUP R2 [str="is_unique_se"] [bool=true]
[24] SETTABUP R2 [str="cursor_se_label_code"] [str="se_system_cursor"]
[25] GETTABUP R1 R0 [str="CONTROLLER_FULL_KEY"]
[26] EQ R0 R0 R1
[27] JMP R0 141
[28] LOADK R1 [str="normal"]
[29] GETTABUP R2 R0 [str="IS_PRO"]
[30] EQ R0 R2 [bool=true]
[31] JMP R0 1
[32] LOADK R1 [str="pro"]
[33] GETTABUP R2 R0 [str="layout_view"]
[34] SELF R2 R2 [str="play_animation"]
[35] GETTABUP R4 R0 [str="string"]
[36] GETTABLE R4 R4 [str="format"]
[37] LOADK R5 [str="ctr_set_%s"]
[38] MOVE R6 R1 R0
[39] CALL R4 R3 R2
[40] LOADK R5 [float=1]
[41] CALL R2 R4 R1
[42] GETTABUP R2 R0 [str="IS_PRO"]
[43] EQ R0 R2 [bool=true]
[44] JMP R0 8
[45] GETTABUP R2 R0 [str="option_button_ctrl_func"]
[46] SELF R2 R2 [str="selector_setup_bind_func"]
[47] GETUPVAL R4 R1 R0
[48] GETTABUP R5 R0 [str="layout_view"]
[49] LOADK R6 [str="selector_3"]
[50] GETUPVAL R7 R2 R0
[51] CALL R2 R6 R1
[52] JMP R0 7
[53] GETTABUP R2 R0 [str="option_button_ctrl_func"]
[54] SELF R2 R2 [str="selector_setup_bind_func"]
[55] GETUPVAL R4 R1 R0
[56] GETTABUP R5 R0 [str="layout_view"]
[57] LOADK R6 [str="selector_0"]
[58] GETUPVAL R7 R2 R0
[59] CALL R2 R6 R1
[60] GETUPVAL R2 R1 R0
[61] SELF R2 R2 [str="setup_button"]
[62] GETTABUP R4 R0 [str="BUTTON_ID_FK_TRIGGER_L"]
[63] GETTABUP R5 R0 [str="string"]
[64] GETTABLE R5 R5 [str="format"]
[65] LOADK R6 [str="set_parts_ctr_%s_l"]
[66] MOVE R7 R1 R0
[67] CALL R5 R3 R0
[68] CALL R2 R0 R1
[69] GETUPVAL R2 R1 R0
[70] SELF R2 R2 [str="setup_button"]
[71] GETTABUP R4 R0 [str="BUTTON_ID_FK_TRIGGER_R"]
[72] GETTABUP R5 R0 [str="string"]
[73] GETTABLE R5 R5 [str="format"]
[74] LOADK R6 [str="set_parts_ctr_%s_r"]
[75] MOVE R7 R1 R0
[76] CALL R5 R3 R0
[77] CALL R2 R0 R1
[78] GETUPVAL R2 R1 R0
[79] SELF R2 R2 [str="setup_button"]
[80] GETTABUP R4 R0 [str="BUTTON_ID_FK_TRIGGER_ZL"]
[81] GETTABUP R5 R0 [str="string"]
[82] GETTABLE R5 R5 [str="format"]
[83] LOADK R6 [str="set_parts_ctr_%s_zl"]
[84] MOVE R7 R1 R0
[85] CALL R5 R3 R0
[86] CALL R2 R0 R1
[87] GETUPVAL R2 R1 R0
[88] SELF R2 R2 [str="setup_button"]
[89] GETTABUP R4 R0 [str="BUTTON_ID_FK_TRIGGER_ZR"]
[90] GETTABUP R5 R0 [str="string"]
[91] GETTABLE R5 R5 [str="format"]
[92] LOADK R6 [str="set_parts_ctr_%s_zr"]
[93] MOVE R7 R1 R0
[94] CALL R5 R3 R0
[95] CALL R2 R0 R1
[96] GETUPVAL R2 R1 R0
[97] SELF R2 R2 [str="setup_button"]
[98] GETTABUP R4 R0 [str="BUTTON_ID_FK_UP"]
[99] GETTABUP R5 R0 [str="string"]
[100] GETTABLE R5 R5 [str="format"]
[101] LOADK R6 [str="set_parts_ctr_%s_ct"]
[102] MOVE R7 R1 R0
[103] CALL R5 R3 R0
[104] CALL R2 R0 R1
[105] GETUPVAL R2 R1 R0
[106] SELF R2 R2 [str="setup_button"]
[107] GETTABUP R4 R0 [str="BUTTON_ID_FK_SIDE"]
[108] GETTABUP R5 R0 [str="string"]
[109] GETTABLE R5 R5 [str="format"]
[110] LOADK R6 [str="set_parts_ctr_%s_clr"]
[111] MOVE R7 R1 R0
[112] CALL R5 R3 R0
[113] CALL R2 R0 R1
[114] GETUPVAL R2 R1 R0
[115] SELF R2 R2 [str="setup_button"]
[116] GETTABUP R4 R0 [str="BUTTON_ID_FK_DOWN"]
[117] GETTABUP R5 R0 [str="string"]
[118] GETTABLE R5 R5 [str="format"]
[119] LOADK R6 [str="set_parts_ctr_%s_cb"]
[120] MOVE R7 R1 R0
[121] CALL R5 R3 R0
[122] CALL R2 R0 R1
[123] GETUPVAL R2 R1 R0
[124] SELF R2 R2 [str="setup_button"]
[125] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[126] GETTABUP R5 R0 [str="string"]
[127] GETTABLE R5 R5 [str="format"]
[128] LOADK R6 [str="set_parts_ctr_%s_a"]
[129] MOVE R7 R1 R0
[130] CALL R5 R3 R0
[131] CALL R2 R0 R1
[132] GETUPVAL R2 R1 R0
[133] SELF R2 R2 [str="setup_button"]
[134] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_B"]
[135] GETTABUP R5 R0 [str="string"]
[136] GETTABLE R5 R5 [str="format"]
[137] LOADK R6 [str="set_parts_ctr_%s_b"]
[138] MOVE R7 R1 R0
[139] CALL R5 R3 R0
[140] CALL R2 R0 R1
[141] GETUPVAL R2 R1 R0
[142] SELF R2 R2 [str="setup_button"]
[143] GETTABUP R4 R0 [str="BUTTON_ID_FK_STICK_R"]
[144] GETTABUP R5 R0 [str="string"]
[145] GETTABLE R5 R5 [str="format"]
[146] LOADK R6 [str="set_parts_ctr_%s_st"]
[147] MOVE R7 R1 R0
[148] CALL R5 R3 R0
[149] CALL R2 R0 R1
[150] GETUPVAL R2 R1 R0
[151] SELF R2 R2 [str="setup_button"]
[152] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_X"]
[153] GETTABUP R5 R0 [str="string"]
[154] GETTABLE R5 R5 [str="format"]
[155] LOADK R6 [str="set_parts_ctr_%s_x"]
[156] MOVE R7 R1 R0
[157] CALL R5 R3 R0
[158] CALL R2 R0 R1
[159] GETUPVAL R2 R1 R0
[160] SELF R2 R2 [str="setup_button"]
[161] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[162] GETTABUP R5 R0 [str="string"]
[163] GETTABLE R5 R5 [str="format"]
[164] LOADK R6 [str="set_parts_ctr_%s_y"]
[165] MOVE R7 R1 R0
[166] CALL R5 R3 R0
[167] CALL R2 R0 R1
[168] JMP R0 128
[169] GETTABUP R1 R0 [str="CONTROLLER_JOY_CON"]
[170] EQ R0 R0 R1
[171] JMP R0 53
[172] GETTABUP R1 R0 [str="layout_view"]
[173] SELF R1 R1 [str="play_animation"]
[174] LOADK R3 [str="ctr_set_joy"]
[175] LOADK R4 [float=1]
[176] CALL R1 R4 R1
[177] GETTABUP R1 R0 [str="option_button_ctrl_func"]
[178] SELF R1 R1 [str="selector_setup_bind_func"]
[179] GETUPVAL R3 R1 R0
[180] GETTABUP R4 R0 [str="layout_view"]
[181] LOADK R5 [str="selector_1"]
[182] GETUPVAL R6 R2 R0
[183] CALL R1 R6 R1
[184] GETUPVAL R1 R1 R0
[185] SELF R1 R1 [str="setup_button"]
[186] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_LR"]
[187] LOADK R4 [str="set_parts_ctr_joy_l"]
[188] CALL R1 R4 R1
[189] GETUPVAL R1 R1 R0
[190] SELF R1 R1 [str="setup_button"]
[191] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_ZLR"]
[192] LOADK R4 [str="set_parts_ctr_joy_zl"]
[193] CALL R1 R4 R1
[194] GETUPVAL R1 R1 R0
[195] SELF R1 R1 [str="setup_button"]
[196] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_SL"]
[197] LOADK R4 [str="set_parts_ctr_joy_sl"]
[198] CALL R1 R4 R1
[199] GETUPVAL R1 R1 R0
[200] SELF R1 R1 [str="setup_button"]
[201] GETTABUP R3 R0 [str="BUTTON_ID_JC_TRIGGER_SR"]
[202] LOADK R4 [str="set_parts_ctr_joy_sr"]
[203] CALL R1 R4 R1
[204] GETUPVAL R1 R1 R0
[205] SELF R1 R1 [str="setup_button"]
[206] GETTABUP R3 R0 [str="BUTTON_ID_JC_UP"]
[207] LOADK R4 [str="set_parts_ctr_joy_ct"]
[208] CALL R1 R4 R1
[209] GETUPVAL R1 R1 R0
[210] SELF R1 R1 [str="setup_button"]
[211] GETTABUP R3 R0 [str="BUTTON_ID_JC_RIGHT"]
[212] LOADK R4 [str="set_parts_ctr_joy_cr"]
[213] CALL R1 R4 R1
[214] GETUPVAL R1 R1 R0
[215] SELF R1 R1 [str="setup_button"]
[216] GETTABUP R3 R0 [str="BUTTON_ID_JC_LEFT"]
[217] LOADK R4 [str="set_parts_ctr_joy_cl"]
[218] CALL R1 R4 R1
[219] GETUPVAL R1 R1 R0
[220] SELF R1 R1 [str="setup_button"]
[221] GETTABUP R3 R0 [str="BUTTON_ID_JC_DOWN"]
[222] LOADK R4 [str="set_parts_ctr_joy_cb"]
[223] CALL R1 R4 R1
[224] JMP R0 72
[225] GETTABUP R1 R0 [str="CONTROLLER_GC_CON"]
[226] EQ R0 R0 R1
[227] JMP R0 68
[228] GETTABUP R1 R0 [str="layout_view"]
[229] SELF R1 R1 [str="play_animation"]
[230] LOADK R3 [str="ctr_set_gc"]
[231] LOADK R4 [float=1]
[232] CALL R1 R4 R1
[233] GETTABUP R1 R0 [str="option_button_ctrl_func"]
[234] SELF R1 R1 [str="selector_setup_bind_func"]
[235] GETUPVAL R3 R1 R0
[236] GETTABUP R4 R0 [str="layout_view"]
[237] LOADK R5 [str="selector_2"]
[238] GETUPVAL R6 R2 R0
[239] CALL R1 R6 R1
[240] GETUPVAL R1 R1 R0
[241] SELF R1 R1 [str="setup_button"]
[242] GETTABUP R3 R0 [str="BUTTON_ID_GC_TRIGGER_L"]
[243] LOADK R4 [str="set_parts_ctr_gc_l"]
[244] CALL R1 R4 R1
[245] GETUPVAL R1 R1 R0
[246] SELF R1 R1 [str="setup_button"]
[247] GETTABUP R3 R0 [str="BUTTON_ID_GC_TRIGGER_R"]
[248] LOADK R4 [str="set_parts_ctr_gc_r"]
[249] CALL R1 R4 R1
[250] GETUPVAL R1 R1 R0
[251] SELF R1 R1 [str="setup_button"]
[252] GETTABUP R3 R0 [str="BUTTON_ID_GC_TRIGGER_Z"]
[253] LOADK R4 [str="set_parts_ctr_gc_z"]
[254] CALL R1 R4 R1
[255] GETUPVAL R1 R1 R0
[256] SELF R1 R1 [str="setup_button"]
[257] GETTABUP R3 R0 [str="BUTTON_ID_GC_UP"]
[258] LOADK R4 [str="set_parts_ctr_gc_ct"]
[259] CALL R1 R4 R1
[260] GETUPVAL R1 R1 R0
[261] SELF R1 R1 [str="setup_button"]
[262] GETTABUP R3 R0 [str="BUTTON_ID_GC_SIDE"]
[263] LOADK R4 [str="set_parts_ctr_gc_clr"]
[264] CALL R1 R4 R1
[265] GETUPVAL R1 R1 R0
[266] SELF R1 R1 [str="setup_button"]
[267] GETTABUP R3 R0 [str="BUTTON_ID_GC_DOWN"]
[268] LOADK R4 [str="set_parts_ctr_gc_cb"]
[269] CALL R1 R4 R1
[270] GETUPVAL R1 R1 R0
[271] SELF R1 R1 [str="setup_button"]
[272] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_A"]
[273] LOADK R4 [str="set_parts_ctr_gc_a"]
[274] CALL R1 R4 R1
[275] GETUPVAL R1 R1 R0
[276] SELF R1 R1 [str="setup_button"]
[277] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_B"]
[278] LOADK R4 [str="set_parts_ctr_gc_b"]
[279] CALL R1 R4 R1
[280] GETUPVAL R1 R1 R0
[281] SELF R1 R1 [str="setup_button"]
[282] GETTABUP R3 R0 [str="BUTTON_ID_GC_STICK_C"]
[283] LOADK R4 [str="set_parts_ctr_gc_c"]
[284] CALL R1 R4 R1
[285] GETUPVAL R1 R1 R0
[286] SELF R1 R1 [str="setup_button"]
[287] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_X"]
[288] LOADK R4 [str="set_parts_ctr_gc_x"]
[289] CALL R1 R4 R1
[290] GETUPVAL R1 R1 R0
[291] SELF R1 R1 [str="setup_button"]
[292] GETTABUP R3 R0 [str="BUTTON_ID_GC_BUTTON_Y"]
[293] LOADK R4 [str="set_parts_ctr_gc_y"]
[294] CALL R1 R4 R1
[295] JMP R0 1
[296] RETURN R0 R1 R0
[297] GETUPVAL R1 R1 R0
[298] SELF R1 R1 [str="setup_button"]
[299] GETTABUP R3 R0 [str="BUTTON_ID_OPTION"]
[300] LOADK R4 [str="set_btn_another_00"]
[301] CALL R1 R4 R1
[302] GETUPVAL R1 R1 R0
[303] SELF R1 R1 [str="setup_button"]
[304] GETTABUP R3 R0 [str="BUTTON_ID_TEST"]
[305] LOADK R4 [str="set_btn_test_00"]
[306] CALL R1 R4 R1
[307] GETUPVAL R1 R1 R0
[308] SELF R1 R1 [str="setup_button"]
[309] GETTABUP R3 R0 [str="BUTTON_ID_SAVE"]
[310] LOADK R4 [str="set_footer_area"]
[311] CALL R1 R4 R1
[312] GETUPVAL R1 R1 R0
[313] SELF R1 R1 [str="get_button"]
[314] GETTABUP R3 R0 [str="BUTTON_ID_SAVE"]
[315] CALL R1 R3 R2
[316] SELF R1 R1 [str="set_decidable"]
[317] LOADBOOL R3 false R0
[318] CALL R1 R3 R1
[319] GETUPVAL R1 R3 R0
[320] EQ R0 R1 nil
[321] JMP R0 4
[322] GETTABUP R1 R0 [str="LayoutButtonSelector"]
[323] SELF R1 R1 [str="new"]
[324] CALL R1 R2 R2
[325] SETUPVAL R1 R3 R0
[326] GETTABUP R1 R0 [str="LayoutButtonSelectorConfig"]
[327] SELF R1 R1 [str="new"]
[328] CALL R1 R2 R2
[329] SETTABLE R1 [str="use_only_shortcut"] [bool=true]
[330] SETTABLE R1 [str="is_unique_se"] [bool=true]
[331] GETUPVAL R2 R3 R0
[332] SELF R2 R2 [str="setup"]
[333] GETTABUP R4 R0 [str="layout_view"]
[334] LOADK R5 [str="selector_00"]
[335] MOVE R6 R1 R0
[336] CALL R2 R5 R1
[337] GETUPVAL R2 R3 R0
[338] SELF R2 R2 [str="setup_button"]
[339] GETTABUP R4 R0 [str="BUTTON_ID_RESET"]
[340] LOADK R5 [str="set_parts_guide"]
[341] CALL R2 R4 R1
[342] GETUPVAL R2 R3 R0
[343] SELF R2 R2 [str="set_shortcut"]
[344] GETTABUP R4 R0 [str="BUTTON_ID_RESET"]
[345] GETTABUP R5 R0 [str="BUTTON_RESET"]
[346] LOADBOOL R6 false R0
[347] CALL R2 R5 R1
[348] GETUPVAL R2 R3 R0
[349] SELF R2 R2 [str="clear_selection"]
[350] CALL R2 R2 R1
[351] GETUPVAL R2 R3 R0
[352] SELF R2 R2 [str="set_focus"]
[353] LOADBOOL R4 true R0
[354] CALL R2 R3 R1
[355] GETTABUP R2 R0 [str="layout_view"]
[356] SELF R2 R2 [str="get_pane"]
[357] LOADK R4 [str="set_parts_guide"]
[358] CALL R2 R3 R2
[359] SETUPVAL R2 R4 R0
[360] GETTABUP R2 R0 [str="layout_view"]
[361] SELF R2 R2 [str="get_parts"]
[362] GETUPVAL R4 R1 R0
[363] SELF R4 R4 [str="get_button"]
[364] GETTABUP R6 R0 [str="BUTTON_ID_TEST"]
[365] CALL R4 R3 R2
[366] SELF R4 R4 [str="get_name"]
[367] CALL R4 R2 R0
[368] CALL R2 R0 R2
[369] SELF R3 R2 [str="get_pane"]
[370] LOADK R5 [str="set_txt_icn_on_00"]
[371] CALL R3 R3 R2
[372] SELF R4 R2 [str="get_pane"]
[373] LOADK R6 [str="set_txt_icn_on_01"]
[374] CALL R4 R3 R2
[375] GETTABUP R5 R0 [str="CONTROLLER_JOY_CON"]
[376] EQ R0 R0 R5
[377] JMP R0 7
[378] SELF R5 R3 [str="set_text_message"]
[379] LOADK R7 [str="mnu_opt_joycon_side_left"]
[380] CALL R5 R3 R1
[381] SELF R5 R4 [str="set_text_message"]
[382] LOADK R7 [str="mnu_opt_joycon_side_left"]
[383] CALL R5 R3 R1
[384] JMP R0 16
[385] GETTABUP R5 R0 [str="CONTROLLER_GC_CON"]
[386] EQ R0 R0 R5
[387] JMP R0 7
[388] SELF R5 R3 [str="set_text_message"]
[389] LOADK R7 [str="mnu_opt_gccon"]
[390] CALL R5 R3 R1
[391] SELF R5 R4 [str="set_text_message"]
[392] LOADK R7 [str="mnu_opt_gccon"]
[393] CALL R5 R3 R1
[394] JMP R0 6
[395] SELF R5 R3 [str="set_text_message"]
[396] LOADK R7 [str="mnu_opt_joycon_both"]
[397] CALL R5 R3 R1
[398] SELF R5 R4 [str="set_text_message"]
[399] LOADK R7 [str="mnu_opt_joycon_both"]
[400] CALL R5 R3 R1
[401] GETTABUP R5 R0 [str="UiScriptPlayer"]
[402] GETTABLE R5 R5 [str="invoke"]
[403] LOADK R6 [str="can_test_play"]
[404] CALL R5 R2 R2
[405] SETUPVAL R5 R5 R0
[406] GETUPVAL R5 R1 R0
[407] SELF R5 R5 [str="get_button"]
[408] GETTABUP R7 R0 [str="BUTTON_ID_TEST"]
[409] CALL R5 R3 R2
[410] SELF R5 R5 [str="set_selectable"]
[411] GETUPVAL R7 R5 R0
[412] CALL R5 R3 R1
[413] GETUPVAL R5 R1 R0
[414] SELF R5 R5 [str="get_button"]
[415] GETTABUP R7 R0 [str="BUTTON_ID_TEST"]
[416] CALL R5 R3 R2
[417] SELF R5 R5 [str="set_decidable"]
[418] GETUPVAL R7 R5 R0
[419] CALL R5 R3 R1
[420] GETTABUP R5 R0 [str="layout_view"]
[421] SELF R5 R5 [str="get_parts"]
[422] GETUPVAL R7 R1 R0
[423] SELF R7 R7 [str="get_button"]
[424] GETTABUP R9 R0 [str="BUTTON_ID_OPTION"]
[425] CALL R7 R3 R2
[426] SELF R7 R7 [str="get_name"]
[427] CALL R7 R2 R0
[428] CALL R5 R0 R2
[429] SELF R6 R5 [str="get_parts"]
[430] LOADK R8 [str="option_com_lct_icn_00"]
[431] CALL R6 R3 R2
[432] SELF R7 R5 [str="get_parts"]
[433] LOADK R9 [str="option_com_lct_icn_01"]
[434] CALL R7 R3 R2
[435] SELF R8 R5 [str="get_parts"]
[436] LOADK R10 [str="option_com_lct_icn_02"]
[437] CALL R8 R3 R2
[438] SELF R9 R5 [str="get_parts"]
[439] LOADK R11 [str="option_com_lct_icn_03"]
[440] CALL R9 R3 R2
[441] SELF R10 R7 [str="play_animation"]
[442] LOADK R12 [str="icn_smash_ab"]
[443] LOADK R13 [float=1]
[444] CALL R10 R4 R1
[445] SELF R10 R6 [str="play_animation"]
[446] LOADK R12 [str="icn_con_normal"]
[447] LOADK R13 [float=1]
[448] CALL R10 R4 R1
[449] SELF R10 R8 [str="play_animation"]
[450] LOADK R12 [str="icn_jump_normal"]
[451] LOADK R13 [float=1]
[452] CALL R10 R4 R1
[453] SELF R10 R9 [str="play_animation"]
[454] LOADK R12 [str="icn_sens_normal"]
[455] LOADK R13 [float=1]
[456] CALL R10 R4 R1
[457] GETTABUP R10 R0 [str="CONTROLLER_FULL_KEY"]
[458] EQ R0 R0 R10
[459] JMP R0 61
[460] GETUPVAL R10 R6 R0
[461] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[462] GETTABUP R12 R0 [str="BUTTON_ID_FK_TRIGGER_L"]
[463] LOADBOOL R13 false R0
[464] CALL R10 R4 R1
[465] GETUPVAL R10 R6 R0
[466] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[467] GETTABUP R12 R0 [str="BUTTON_ID_FK_TRIGGER_R"]
[468] LOADBOOL R13 false R0
[469] CALL R10 R4 R1
[470] GETUPVAL R10 R6 R0
[471] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[472] GETTABUP R12 R0 [str="BUTTON_ID_FK_TRIGGER_ZL"]
[473] LOADBOOL R13 false R0
[474] CALL R10 R4 R1
[475] GETUPVAL R10 R6 R0
[476] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[477] GETTABUP R12 R0 [str="BUTTON_ID_FK_TRIGGER_ZR"]
[478] LOADBOOL R13 false R0
[479] CALL R10 R4 R1
[480] GETUPVAL R10 R6 R0
[481] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[482] GETTABUP R12 R0 [str="BUTTON_ID_FK_UP"]
[483] LOADBOOL R13 false R0
[484] CALL R10 R4 R1
[485] GETUPVAL R10 R6 R0
[486] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[487] GETTABUP R12 R0 [str="BUTTON_ID_FK_SIDE"]
[488] LOADBOOL R13 false R0
[489] CALL R10 R4 R1
[490] GETUPVAL R10 R6 R0
[491] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[492] GETTABUP R12 R0 [str="BUTTON_ID_FK_DOWN"]
[493] LOADBOOL R13 false R0
[494] CALL R10 R4 R1
[495] GETUPVAL R10 R6 R0
[496] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[497] GETTABUP R12 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[498] LOADBOOL R13 false R0
[499] CALL R10 R4 R1
[500] GETUPVAL R10 R6 R0
[501] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[502] GETTABUP R12 R0 [str="BUTTON_ID_FK_BUTTON_B"]
[503] LOADBOOL R13 false R0
[504] CALL R10 R4 R1
[505] GETUPVAL R10 R6 R0
[506] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[507] GETTABUP R12 R0 [str="BUTTON_ID_FK_STICK_R"]
[508] LOADBOOL R13 false R0
[509] CALL R10 R4 R1
[510] GETUPVAL R10 R6 R0
[511] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[512] GETTABUP R12 R0 [str="BUTTON_ID_FK_BUTTON_X"]
[513] LOADBOOL R13 false R0
[514] CALL R10 R4 R1
[515] GETUPVAL R10 R6 R0
[516] GETTABUP R11 R0 [str="CONTROLLER_FULL_KEY"]
[517] GETTABUP R12 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[518] LOADBOOL R13 false R0
[519] CALL R10 R4 R1
[520] JMP R0 102
[521] GETTABUP R10 R0 [str="CONTROLLER_JOY_CON"]
[522] EQ R0 R0 R10
[523] JMP R0 41
[524] GETUPVAL R10 R6 R0
[525] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[526] GETTABUP R12 R0 [str="BUTTON_ID_JC_TRIGGER_LR"]
[527] LOADBOOL R13 false R0
[528] CALL R10 R4 R1
[529] GETUPVAL R10 R6 R0
[530] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[531] GETTABUP R12 R0 [str="BUTTON_ID_JC_TRIGGER_ZLR"]
[532] LOADBOOL R13 false R0
[533] CALL R10 R4 R1
[534] GETUPVAL R10 R6 R0
[535] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[536] GETTABUP R12 R0 [str="BUTTON_ID_JC_TRIGGER_SL"]
[537] LOADBOOL R13 false R0
[538] CALL R10 R4 R1
[539] GETUPVAL R10 R6 R0
[540] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[541] GETTABUP R12 R0 [str="BUTTON_ID_JC_TRIGGER_SR"]
[542] LOADBOOL R13 false R0
[543] CALL R10 R4 R1
[544] GETUPVAL R10 R6 R0
[545] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[546] GETTABUP R12 R0 [str="BUTTON_ID_JC_UP"]
[547] LOADBOOL R13 false R0
[548] CALL R10 R4 R1
[549] GETUPVAL R10 R6 R0
[550] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[551] GETTABUP R12 R0 [str="BUTTON_ID_JC_RIGHT"]
[552] LOADBOOL R13 false R0
[553] CALL R10 R4 R1
[554] GETUPVAL R10 R6 R0
[555] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[556] GETTABUP R12 R0 [str="BUTTON_ID_JC_LEFT"]
[557] LOADBOOL R13 false R0
[558] CALL R10 R4 R1
[559] GETUPVAL R10 R6 R0
[560] GETTABUP R11 R0 [str="CONTROLLER_JOY_CON"]
[561] GETTABUP R12 R0 [str="BUTTON_ID_JC_DOWN"]
[562] LOADBOOL R13 false R0
[563] CALL R10 R4 R1
[564] JMP R0 58
[565] GETTABUP R10 R0 [str="CONTROLLER_GC_CON"]
[566] EQ R0 R0 R10
[567] JMP R0 55
[568] GETUPVAL R10 R6 R0
[569] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[570] GETTABUP R12 R0 [str="BUTTON_ID_GC_TRIGGER_L"]
[571] LOADBOOL R13 false R0
[572] CALL R10 R4 R1
[573] GETUPVAL R10 R6 R0
[574] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[575] GETTABUP R12 R0 [str="BUTTON_ID_GC_TRIGGER_R"]
[576] LOADBOOL R13 false R0
[577] CALL R10 R4 R1
[578] GETUPVAL R10 R6 R0
[579] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[580] GETTABUP R12 R0 [str="BUTTON_ID_GC_TRIGGER_Z"]
[581] LOADBOOL R13 false R0
[582] CALL R10 R4 R1
[583] GETUPVAL R10 R6 R0
[584] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[585] GETTABUP R12 R0 [str="BUTTON_ID_GC_UP"]
[586] LOADBOOL R13 false R0
[587] CALL R10 R4 R1
[588] GETUPVAL R10 R6 R0
[589] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[590] GETTABUP R12 R0 [str="BUTTON_ID_GC_SIDE"]
[591] LOADBOOL R13 false R0
[592] CALL R10 R4 R1
[593] GETUPVAL R10 R6 R0
[594] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[595] GETTABUP R12 R0 [str="BUTTON_ID_GC_DOWN"]
[596] LOADBOOL R13 false R0
[597] CALL R10 R4 R1
[598] GETUPVAL R10 R6 R0
[599] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[600] GETTABUP R12 R0 [str="BUTTON_ID_GC_BUTTON_A"]
[601] LOADBOOL R13 false R0
[602] CALL R10 R4 R1
[603] GETUPVAL R10 R6 R0
[604] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[605] GETTABUP R12 R0 [str="BUTTON_ID_GC_BUTTON_B"]
[606] LOADBOOL R13 false R0
[607] CALL R10 R4 R1
[608] GETUPVAL R10 R6 R0
[609] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[610] GETTABUP R12 R0 [str="BUTTON_ID_GC_STICK_C"]
[611] LOADBOOL R13 false R0
[612] CALL R10 R4 R1
[613] GETUPVAL R10 R6 R0
[614] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[615] GETTABUP R12 R0 [str="BUTTON_ID_GC_BUTTON_X"]
[616] LOADBOOL R13 false R0
[617] CALL R10 R4 R1
[618] GETUPVAL R10 R6 R0
[619] GETTABUP R11 R0 [str="CONTROLLER_GC_CON"]
[620] GETTABUP R12 R0 [str="BUTTON_ID_GC_BUTTON_Y"]
[621] LOADBOOL R13 false R0
[622] CALL R10 R4 R1
[623] GETUPVAL R10 R7 R0
[624] MOVE R11 R0 R0
[625] CALL R10 R2 R1
[626] RETURN R0 R1 R0
k0 = [str="layout_view"]
k1 = [str="layout_root"]
k2 = [str="get_root_view"]
k3 = [str="stop_animation_frame"]
k4 = [str="in"]
k5 = [float=0]
k6 = nil
k7 = [str="LayoutButtonSelector"]
k8 = [str="new"]
k9 = [str="LayoutButtonSelectorConfig"]
k10 = [str="is_unique_se"]
k11 = [bool=true]
k12 = [str="cursor_se_label_code"]
k13 = [str="se_system_cursor"]
k14 = [str="CONTROLLER_FULL_KEY"]
k15 = [str="normal"]
k16 = [str="IS_PRO"]
k17 = [str="pro"]
k18 = [str="play_animation"]
k19 = [str="string"]
k20 = [str="format"]
k21 = [str="ctr_set_%s"]
k22 = [float=1]
k23 = [str="option_button_ctrl_func"]
k24 = [str="selector_setup_bind_func"]
k25 = [str="selector_3"]
k26 = [str="selector_0"]
k27 = [str="setup_button"]
k28 = [str="BUTTON_ID_FK_TRIGGER_L"]
k29 = [str="set_parts_ctr_%s_l"]
k30 = [str="BUTTON_ID_FK_TRIGGER_R"]
k31 = [str="set_parts_ctr_%s_r"]
k32 = [str="BUTTON_ID_FK_TRIGGER_ZL"]
k33 = [str="set_parts_ctr_%s_zl"]
k34 = [str="BUTTON_ID_FK_TRIGGER_ZR"]
k35 = [str="set_parts_ctr_%s_zr"]
k36 = [str="BUTTON_ID_FK_UP"]
k37 = [str="set_parts_ctr_%s_ct"]
k38 = [str="BUTTON_ID_FK_SIDE"]
k39 = [str="set_parts_ctr_%s_clr"]
k40 = [str="BUTTON_ID_FK_DOWN"]
k41 = [str="set_parts_ctr_%s_cb"]
k42 = [str="BUTTON_ID_FK_BUTTON_A"]
k43 = [str="set_parts_ctr_%s_a"]
k44 = [str="BUTTON_ID_FK_BUTTON_B"]
k45 = [str="set_parts_ctr_%s_b"]
k46 = [str="BUTTON_ID_FK_STICK_R"]
k47 = [str="set_parts_ctr_%s_st"]
k48 = [str="BUTTON_ID_FK_BUTTON_X"]
k49 = [str="set_parts_ctr_%s_x"]
k50 = [str="BUTTON_ID_FK_BUTTON_Y"]
k51 = [str="set_parts_ctr_%s_y"]
k52 = [str="CONTROLLER_JOY_CON"]
k53 = [str="ctr_set_joy"]
k54 = [str="selector_1"]
k55 = [str="BUTTON_ID_JC_TRIGGER_LR"]
k56 = [str="set_parts_ctr_joy_l"]
k57 = [str="BUTTON_ID_JC_TRIGGER_ZLR"]
k58 = [str="set_parts_ctr_joy_zl"]
k59 = [str="BUTTON_ID_JC_TRIGGER_SL"]
k60 = [str="set_parts_ctr_joy_sl"]
k61 = [str="BUTTON_ID_JC_TRIGGER_SR"]
k62 = [str="set_parts_ctr_joy_sr"]
k63 = [str="BUTTON_ID_JC_UP"]
k64 = [str="set_parts_ctr_joy_ct"]
k65 = [str="BUTTON_ID_JC_RIGHT"]
k66 = [str="set_parts_ctr_joy_cr"]
k67 = [str="BUTTON_ID_JC_LEFT"]
k68 = [str="set_parts_ctr_joy_cl"]
k69 = [str="BUTTON_ID_JC_DOWN"]
k70 = [str="set_parts_ctr_joy_cb"]
k71 = [str="CONTROLLER_GC_CON"]
k72 = [str="ctr_set_gc"]
k73 = [str="selector_2"]
k74 = [str="BUTTON_ID_GC_TRIGGER_L"]
k75 = [str="set_parts_ctr_gc_l"]
k76 = [str="BUTTON_ID_GC_TRIGGER_R"]
k77 = [str="set_parts_ctr_gc_r"]
k78 = [str="BUTTON_ID_GC_TRIGGER_Z"]
k79 = [str="set_parts_ctr_gc_z"]
k80 = [str="BUTTON_ID_GC_UP"]
k81 = [str="set_parts_ctr_gc_ct"]
k82 = [str="BUTTON_ID_GC_SIDE"]
k83 = [str="set_parts_ctr_gc_clr"]
k84 = [str="BUTTON_ID_GC_DOWN"]
k85 = [str="set_parts_ctr_gc_cb"]
k86 = [str="BUTTON_ID_GC_BUTTON_A"]
k87 = [str="set_parts_ctr_gc_a"]
k88 = [str="BUTTON_ID_GC_BUTTON_B"]
k89 = [str="set_parts_ctr_gc_b"]
k90 = [str="BUTTON_ID_GC_STICK_C"]
k91 = [str="set_parts_ctr_gc_c"]
k92 = [str="BUTTON_ID_GC_BUTTON_X"]
k93 = [str="set_parts_ctr_gc_x"]
k94 = [str="BUTTON_ID_GC_BUTTON_Y"]
k95 = [str="set_parts_ctr_gc_y"]
k96 = [str="BUTTON_ID_OPTION"]
k97 = [str="set_btn_another_00"]
k98 = [str="BUTTON_ID_TEST"]
k99 = [str="set_btn_test_00"]
k100 = [str="BUTTON_ID_SAVE"]
k101 = [str="set_footer_area"]
k102 = [str="get_button"]
k103 = [str="set_decidable"]
k104 = [str="use_only_shortcut"]
k105 = [str="setup"]
k106 = [str="selector_00"]
k107 = [str="BUTTON_ID_RESET"]
k108 = [str="set_parts_guide"]
k109 = [str="set_shortcut"]
k110 = [str="BUTTON_RESET"]
k111 = [str="clear_selection"]
k112 = [str="set_focus"]
k113 = [str="get_pane"]
k114 = [str="get_parts"]
k115 = [str="get_name"]
k116 = [str="set_txt_icn_on_00"]
k117 = [str="set_txt_icn_on_01"]
k118 = [str="set_text_message"]
k119 = [str="mnu_opt_joycon_side_left"]
k120 = [str="mnu_opt_gccon"]
k121 = [str="mnu_opt_joycon_both"]
k122 = [str="UiScriptPlayer"]
k123 = [str="invoke"]
k124 = [str="can_test_play"]
k125 = [str="set_selectable"]
k126 = [str="option_com_lct_icn_00"]
k127 = [str="option_com_lct_icn_01"]
k128 = [str="option_com_lct_icn_02"]
k129 = [str="option_com_lct_icn_03"]
k130 = [str="icn_smash_ab"]
k131 = [str="icn_con_normal"]
k132 = [str="icn_jump_normal"]
k133 = [str="icn_sens_normal"]

[func CLOSURE_11]
u0 = u0
[0] GETTABUP R1 R0 [str="UiScriptPlayer"]
[1] GETTABLE R1 R1 [str="invoke"]
[2] LOADK R2 [str="is_setting_changed"]
[3] MOVE R3 R0 R0
[4] CALL R1 R3 R2
[5] EQ R0 R1 [bool=true]
[6] JMP R0 25
[7] GETTABUP R1 R0 [str="AppPopupManager"]
[8] GETTABLE R1 R1 [str="open_database"]
[9] LOADK R2 [str="ID_POPUP_OPT_BTN_KEY_RETURN_NO_SAVE"]
[10] CALL R1 R2 R1
[11] GETTABUP R1 R0 [str="AppPopupManager"]
[12] GETTABLE R1 R1 [str="is_busy"]
[13] CALL R1 R1 R2
[14] EQ R0 R1 [bool=false]
[15] JMP R0 9
[16] GETTABUP R1 R0 [str="AppPopupManager"]
[17] GETTABLE R1 R1 [str="get_result"]
[18] CALL R1 R1 R2
[19] GETTABUP R2 R0 [str="POPUP_RESULT_YES"]
[20] EQ R1 R1 R2
[21] JMP R0 1
[22] LOADBOOL R2 false R1
[23] LOADBOOL R2 true R0
[24] RETURN R2 R2 R0
[25] GETTABUP R1 R0 [str="coroutine"]
[26] GETTABLE R1 R1 [str="yield"]
[27] CALL R1 R1 R1
[28] LOADBOOL R1 false R0
[29] TEST R1 R0 R0
[30] JMP R0 -20
[31] JMP R0 6
[32] GETTABUP R1 R0 [str="UiSoundManager"]
[33] SELF R1 R1 [str="play_se_label"]
[34] LOADK R3 [str="se_system_cancel"]
[35] CALL R1 R3 R1
[36] LOADBOOL R1 true R0
[37] RETURN R1 R2 R0
[38] RETURN R0 R1 R0
k0 = [str="UiScriptPlayer"]
k1 = [str="invoke"]
k2 = [str="is_setting_changed"]
k3 = [bool=true]
k4 = [str="AppPopupManager"]
k5 = [str="open_database"]
k6 = [str="ID_POPUP_OPT_BTN_KEY_RETURN_NO_SAVE"]
k7 = [str="is_busy"]
k8 = [bool=false]
k9 = [str="get_result"]
k10 = [str="POPUP_RESULT_YES"]
k11 = [str="coroutine"]
k12 = [str="yield"]
k13 = [str="UiSoundManager"]
k14 = [str="play_se_label"]
k15 = [str="se_system_cancel"]

[func CLOSURE_12]
u0 = u0
[0] GETTABUP R1 R0 [str="UiScriptPlayer"]
[1] GETTABLE R1 R1 [str="invoke"]
[2] LOADK R2 [str="get_not_assigned_operation_num"]
[3] MOVE R3 R0 R0
[4] CALL R1 R3 R2
[5] EQ R0 [u64=0x0] R1
[6] JMP R0 7
[7] GETTABUP R2 R0 [str="UiSoundManager"]
[8] SELF R2 R2 [str="play_se_label"]
[9] LOADK R4 [str="se_system_save"]
[10] CALL R2 R3 R1
[11] LOADBOOL R2 true R0
[12] RETURN R2 R2 R0
[13] JMP R0 36
[14] LT R0 [u64=0x0] R1
[15] JMP R0 21
[16] GETTABUP R2 R0 [str="AppPopupManager"]
[17] GETTABLE R2 R2 [str="is_busy"]
[18] CALL R2 R1 R2
[19] EQ R0 R2 [bool=false]
[20] JMP R0 9
[21] GETTABUP R2 R0 [str="AppPopupManager"]
[22] GETTABLE R2 R2 [str="get_result"]
[23] CALL R2 R1 R2
[24] GETTABUP R3 R0 [str="POPUP_RESULT_YES"]
[25] EQ R1 R2 R3
[26] JMP R0 1
[27] LOADBOOL R3 false R1
[28] LOADBOOL R3 true R0
[29] RETURN R3 R2 R0
[30] GETTABUP R2 R0 [str="coroutine"]
[31] GETTABLE R2 R2 [str="yield"]
[32] CALL R2 R1 R1
[33] LOADBOOL R2 false R0
[34] TEST R2 R0 R0
[35] JMP R0 -20
[36] JMP R0 13
[37] GETTABUP R2 R0 [str="AppPopupManager"]
[38] GETTABLE R2 R2 [str="is_busy"]
[39] CALL R2 R1 R2
[40] EQ R0 R2 [bool=false]
[41] JMP R0 2
[42] LOADBOOL R2 false R0
[43] RETURN R2 R2 R0
[44] GETTABUP R2 R0 [str="coroutine"]
[45] GETTABLE R2 R2 [str="yield"]
[46] CALL R2 R1 R1
[47] LOADBOOL R2 false R0
[48] TEST R2 R0 R0
[49] JMP R0 -13
[50] RETURN R0 R1 R0
k0 = [str="UiScriptPlayer"]
k1 = [str="invoke"]
k2 = [str="get_not_assigned_operation_num"]
k3 = [u64=0x0]
k4 = [str="UiSoundManager"]
k5 = [str="play_se_label"]
k6 = [str="se_system_save"]
k7 = [str="AppPopupManager"]
k8 = [str="is_busy"]
k9 = [bool=false]
k10 = [str="get_result"]
k11 = [str="POPUP_RESULT_YES"]
k12 = [str="coroutine"]
k13 = [str="yield"]

[func CLOSURE_13]
u0 = u0
[0] GETTABUP R1 R0 [str="CONTROLLER_GC_CON"]
[1] EQ R0 R0 R1
[2] JMP R0 3
[3] GETTABUP R1 R0 [str="MSG_LABEL_GC_CON"]
[4] RETURN R1 R2 R0
[5] JMP R0 5
[6] GETTABUP R1 R0 [str="CONTROLLER_JOY_CON"]
[7] EQ R0 R0 R1
[8] JMP R0 2
[9] GETTABUP R1 R0 [str="MSG_LABEL_JOY_CON"]
[10] RETURN R1 R2 R0
[11] GETTABUP R1 R0 [str="MSG_LABEL_FULL_KEY"]
[12] RETURN R1 R2 R0
[13] RETURN R0 R1 R0
k0 = [str="CONTROLLER_GC_CON"]
k1 = [str="MSG_LABEL_GC_CON"]
k2 = [str="CONTROLLER_JOY_CON"]
k3 = [str="MSG_LABEL_JOY_CON"]
k4 = [str="MSG_LABEL_FULL_KEY"]

[func CLOSURE_14]
u0 = u0
u1 = r19
[0] GETTABUP R1 R0 [str="UiScriptPlayer"]
[1] GETTABLE R1 R1 [str="invoke"]
[2] LOADK R2 [str="can_test_play"]
[3] CALL R1 R2 R2
[4] EQ R0 R1 [bool=false]
[5] JMP R0 22
[6] GETTABUP R1 R0 [str="AppPopupManager"]
[7] GETTABLE R1 R1 [str="open_database_args"]
[8] LOADK R2 [str="ID_POPUP_OPT_BTN_KEY_CANNOT_TRY"]
[9] GETUPVAL R3 R1 R0
[10] MOVE R4 R0 R0
[11] CALL R3 R2 R2
[12] LOADK R4 [str="s"]
[13] CALL R1 R4 R1
[14] GETTABUP R1 R0 [str="AppPopupManager"]
[15] GETTABLE R1 R1 [str="is_busy"]
[16] CALL R1 R1 R2
[17] EQ R0 R1 [bool=false]
[18] JMP R0 2
[19] LOADBOOL R1 false R0
[20] RETURN R1 R2 R0
[21] GETTABUP R1 R0 [str="coroutine"]
[22] GETTABLE R1 R1 [str="yield"]
[23] CALL R1 R1 R1
[24] LOADBOOL R1 false R0
[25] TEST R1 R0 R0
[26] JMP R0 -13
[27] JMP R0 2
[28] LOADBOOL R1 true R0
[29] RETURN R1 R2 R0
[30] RETURN R0 R1 R0
k0 = [str="UiScriptPlayer"]
k1 = [str="invoke"]
k2 = [str="can_test_play"]
k3 = [bool=false]
k4 = [str="AppPopupManager"]
k5 = [str="open_database_args"]
k6 = [str="ID_POPUP_OPT_BTN_KEY_CANNOT_TRY"]
k7 = [str="s"]
k8 = [str="is_busy"]
k9 = [str="coroutine"]
k10 = [str="yield"]

[func CLOSURE_15]
u0 = r1
u1 = u0
u2 = r0
[0] GETUPVAL R0 R0 R0
[1] SELF R0 R0 [str="set_enable"]
[2] LOADBOOL R2 false R0
[3] CALL R0 R3 R1
[4] GETTABUP R0 R1 [str="ComFrameActor"]
[5] GETTABLE R0 R0 [str="hide_frame"]
[6] LOADBOOL R1 true R0
[7] CALL R0 R2 R1
[8] GETTABUP R0 R2 [str="play_animation_and_wait"]
[9] GETTABUP R1 R1 [str="layout_view"]
[10] LOADK R2 [str="out"]
[11] CALL R0 R3 R1
[12] GETTABUP R0 R1 [str="UiScriptPlayer"]
[13] GETTABLE R0 R0 [str="invoke"]
[14] LOADK R1 [str="start_test_play"]
[15] CALL R0 R2 R1
[16] GETTABUP R0 R1 [str="UiScriptPlayer"]
[17] GETTABLE R0 R0 [str="invoke"]
[18] LOADK R1 [str="is_playing"]
[19] CALL R0 R2 R2
[20] EQ R0 R0 [bool=false]
[21] JMP R0 16
[22] GETTABUP R0 R1 [str="ComFrameActor"]
[23] GETTABLE R0 R0 [str="unselect"]
[24] CALL R0 R1 R1
[25] GETTABUP R0 R2 [str="play_animation_and_wait"]
[26] GETTABUP R1 R1 [str="layout_view"]
[27] LOADK R2 [str="r_in"]
[28] CALL R0 R3 R1
[29] GETUPVAL R0 R0 R0
[30] SELF R0 R0 [str="set_focus"]
[31] LOADBOOL R2 true R0
[32] CALL R0 R3 R1
[33] GETUPVAL R0 R0 R0
[34] SELF R0 R0 [str="set_enable"]
[35] LOADBOOL R2 true R0
[36] CALL R0 R3 R1
[37] RETURN R0 R1 R0
[38] GETTABUP R0 R1 [str="coroutine"]
[39] GETTABLE R0 R0 [str="yield"]
[40] CALL R0 R1 R1
[41] LOADBOOL R0 false R0
[42] TEST R0 R0 R0
[43] JMP R0 -28
[44] RETURN R0 R1 R0
k0 = [str="set_enable"]
k1 = [str="ComFrameActor"]
k2 = [str="hide_frame"]
k3 = [str="play_animation_and_wait"]
k4 = [str="layout_view"]
k5 = [str="out"]
k6 = [str="UiScriptPlayer"]
k7 = [str="invoke"]
k8 = [str="start_test_play"]
k9 = [str="is_playing"]
k10 = [bool=false]
k11 = [str="unselect"]
k12 = [str="r_in"]
k13 = [str="set_focus"]
k14 = [str="coroutine"]
k15 = [str="yield"]

[func CLOSURE_16]
u0 = r4
u1 = r3
[0] GETUPVAL R1 R0 R0
[1] SELF R1 R1 [str="set_visible"]
[2] MOVE R3 R0 R0
[3] CALL R1 R3 R1
[4] GETUPVAL R1 R1 R0
[5] SELF R1 R1 [str="set_enable"]
[6] MOVE R3 R0 R0
[7] CALL R1 R3 R1
[8] RETURN R0 R1 R0
k0 = [str="set_visible"]
k1 = [str="set_enable"]

[func CLOSURE_17]
u0 = u0
u1 = r16
u2 = r1
u3 = r3
u4 = r9
u5 = r10
u6 = r0
u7 = r22
u8 = r19
u9 = r15
u10 = r14
u11 = r13
u12 = r17
u13 = r18
u14 = r20
u15 = r21
[0] GETTABUP R0 R0 [str="layout_root"]
[1] SELF R0 R0 [str="get_root_view"]
[2] CALL R0 R2 R2
[3] SETTABUP R0 [str="layout_view"] R0
[4] GETTABUP R0 R0 [str="SCENE_EXIT_CODE_NONE"]
[5] SETTABUP R0 [str="exit_code"] R0
[6] GETUPVAL R0 R1 R0
[7] GETTABUP R1 R0 [str="CONTROLLER_TYPE"]
[8] CALL R0 R2 R1
[9] GETUPVAL R0 R2 R0
[10] SELF R0 R0 [str="clear_selection"]
[11] CALL R0 R2 R1
[12] GETUPVAL R0 R2 R0
[13] SELF R0 R0 [str="select_button"]
[14] GETTABUP R2 R0 [str="BUTTON_ID_INIT"]
[15] CALL R0 R3 R1
[16] GETUPVAL R0 R2 R0
[17] SELF R0 R0 [str="set_focus"]
[18] LOADBOOL R2 true R0
[19] CALL R0 R3 R1
[20] GETUPVAL R0 R2 R0
[21] SELF R0 R0 [str="set_enable"]
[22] LOADBOOL R2 false R0
[23] CALL R0 R3 R1
[24] GETUPVAL R0 R3 R0
[25] SELF R0 R0 [str="clear_selection"]
[26] CALL R0 R2 R1
[27] GETUPVAL R0 R3 R0
[28] SELF R0 R0 [str="set_focus"]
[29] LOADBOOL R2 true R0
[30] CALL R0 R3 R1
[31] GETUPVAL R0 R3 R0
[32] SELF R0 R0 [str="set_enable"]
[33] LOADBOOL R2 false R0
[34] CALL R0 R3 R1
[35] GETTABUP R0 R0 [str="ComFrameActor"]
[36] GETTABLE R0 R0 [str="set_back_enable"]
[37] LOADBOOL R1 true R0
[38] CALL R0 R2 R1
[39] GETTABUP R0 R0 [str="ComFrameActor"]
[40] GETTABLE R0 R0 [str="set_save_button"]
[41] GETTABUP R1 R0 [str="COMFRAME_FOOTERBUTTON_LARGE_100"]
[42] CALL R0 R2 R1
[43] GETTABUP R0 R0 [str="ComFrameActor"]
[44] GETTABLE R0 R0 [str="set_footer_area"]
[45] GETTABUP R1 R0 [str="COMFRAME_FOOTERMESSAGEAREA_NONE"]
[46] CALL R0 R2 R1
[47] GETTABUP R0 R0 [str="ComFrameActor"]
[48] GETTABLE R0 R0 [str="unselect"]
[49] CALL R0 R1 R1
[50] GETUPVAL R0 R4 R0
[51] GETTABUP R1 R0 [str="CONTROLLER_TYPE"]
[52] GETTABUP R2 R0 [str="BUTTON_ID_INIT"]
[53] CALL R0 R3 R1
[54] GETTABUP R0 R0 [str="CONTROLLER_TYPE"]
[55] GETTABUP R1 R0 [str="CONTROLLER_JOY_CON"]
[56] EQ R0 R0 R1
[57] JMP R0 16
[58] GETUPVAL R0 R5 R0
[59] GETTABUP R1 R0 [str="BUTTON_ID_INIT"]
[60] CALL R0 R2 R2
[61] EQ R0 R0 [bool=true]
[62] JMP R0 6
[63] GETTABUP R0 R0 [str="layout_view"]
[64] SELF R0 R0 [str="play_animation"]
[65] LOADK R2 [str="ctr_joy_chg_a"]
[66] LOADK R3 [float=1]
[67] CALL R0 R4 R1
[68] JMP R0 5
[69] GETTABUP R0 R0 [str="layout_view"]
[70] SELF R0 R0 [str="play_animation"]
[71] LOADK R2 [str="ctr_joy_chg_b"]
[72] LOADK R3 [float=1]
[73] CALL R0 R4 R1
[74] GETTABUP R0 R0 [str="IS_BACK"]
[75] EQ R0 R0 [bool=true]
[76] JMP R0 6
[77] GETTABUP R0 R0 [str="layout_view"]
[78] SELF R0 R0 [str="play_animation"]
[79] LOADK R2 [str="r_in"]
[80] LOADK R3 [float=1]
[81] CALL R0 R4 R1
[82] JMP R0 5
[83] GETTABUP R0 R0 [str="layout_view"]
[84] SELF R0 R0 [str="play_animation"]
[85] LOADK R2 [str="in"]
[86] LOADK R3 [float=1]
[87] CALL R0 R4 R1
[88] GETTABUP R0 R6 [str="fade_in"]
[89] LOADBOOL R1 false R0
[90] CALL R0 R2 R1
[91] GETTABUP R0 R0 [str="layout_root"]
[92] SELF R0 R0 [str="set_enable_input"]
[93] LOADBOOL R2 true R0
[94] CALL R0 R3 R1
[95] GETUPVAL R0 R2 R0
[96] SELF R0 R0 [str="set_enable"]
[97] LOADBOOL R2 true R0
[98] CALL R0 R3 R1
[99] GETTABUP R0 R0 [str="UiScriptPlayer"]
[100] GETTABLE R0 R0 [str="invoke"]
[101] LOADK R1 [str="is_default_settings"]
[102] GETTABUP R2 R0 [str="CONTROLLER_TYPE"]
[103] CALL R0 R3 R2
[104] GETUPVAL R1 R7 R0
[105] NOT R2 R0 R0
[106] CALL R1 R2 R1
[107] LOADNIL R1 R0 R0
[108] SETTABUP R0 [str="button_is_edited"] [bool=false]
[109] GETTABUP R2 R0 [str="BUTTON_ID_NONE"]
[110] SETTABUP R0 [str="updated_button_id"] R2
[111] GETTABUP R2 R0 [str="UiScriptPlayer"]
[112] GETTABLE R2 R2 [str="invoke"]
[113] LOADK R3 [str="is_default_settings"]
[114] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[115] CALL R2 R3 R2
[116] MOVE R0 R2 R0
[117] GETUPVAL R2 R3 R0
[118] SELF R2 R2 [str="is_enable"]
[119] CALL R2 R2 R2
[120] TEST R2 R0 R0 ; if R2 <=> 0 goto 122 else 124
[121] JMP R0 2
[122] TEST R0 R0 R1 ; 122: if R0 <=> 1 goto 124 else 128
[123] JMP R0 4
[124] TEST R2 R0 R1 ; 124: if R2 <=> 1 goto 126 else 131
[125] JMP R0 5
[126] TEST R0 R0 R1 ; 126: if R0 <=> 1 goto 128 else 131
[127] JMP R0 3
[128] GETUPVAL R3 R7 R0
[129] NOT R4 R0 R0
[130] CALL R3 R2 R1
[131] GETUPVAL R3 R3 R0
[132] SELF R3 R3 [str="get_decided_button_id"]
[133] CALL R3 R2 R2
[134] GETTABUP R4 R0 [str="BUTTON_ID_RESET"]
[135] EQ R0 R3 R4
[136] JMP R0 29
[137] GETTABUP R3 R0 [str="AppPopupManager"]
[138] GETTABLE R3 R3 [str="open_database_args"]
[139] LOADK R4 [str="ID_POPUP_OPT_BTN_CTRL_INIT"]
[140] GETUPVAL R5 R8 R0
[141] GETTABUP R6 R0 [str="CONTROLLER_TYPE"]
[142] CALL R5 R2 R2
[143] LOADK R6 [str="s"]
[144] CALL R3 R4 R1
[145] GETTABUP R3 R0 [str="AppPopupManager"]
[146] GETTABLE R3 R3 [str="is_busy"]
[147] CALL R3 R1 R2
[148] EQ R0 R3 [bool=false]
[149] JMP R0 10
[150] GETTABUP R3 R0 [str="AppPopupManager"]
[151] GETTABLE R3 R3 [str="get_result"]
[152] CALL R3 R1 R2
[153] GETTABUP R4 R0 [str="POPUP_RESULT_YES"]
[154] EQ R0 R3 R4
[155] JMP R0 10
[156] GETUPVAL R4 R9 R0
[157] GETTABUP R5 R0 [str="CONTROLLER_TYPE"]
[158] CALL R4 R2 R1
[159] JMP R0 6
[160] GETTABUP R3 R0 [str="coroutine"]
[161] GETTABLE R3 R3 [str="yield"]
[162] CALL R3 R1 R1
[163] LOADBOOL R3 false R0
[164] TEST R3 R0 R0
[165] JMP R0 -21
[166] GETTABUP R3 R0 [str="updated_button_id"]
[167] GETTABUP R4 R0 [str="BUTTON_ID_OPTION"]
[168] EQ R0 R3 R4
[169] JMP R0 18
[170] GETUPVAL R3 R10 R0
[171] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[172] CALL R3 R2 R1
[173] GETUPVAL R3 R2 R0
[174] SELF R3 R3 [str="set_focus"]
[175] LOADBOOL R5 true R0
[176] CALL R3 R3 R1
[177] GETUPVAL R3 R2 R0
[178] SELF R3 R3 [str="set_enable"]
[179] LOADBOOL R5 true R0
[180] CALL R3 R3 R1
[181] GETTABUP R3 R0 [str="ComFrameActor"]
[182] GETTABLE R3 R3 [str="set_save_button"]
[183] GETTABUP R4 R0 [str="COMFRAME_FOOTERBUTTON_LARGE_100"]
[184] CALL R3 R2 R1
[185] GETTABUP R3 R0 [str="BUTTON_ID_NONE"]
[186] SETTABUP R0 [str="updated_button_id"] R3
[187] JMP R0 23
[188] GETTABUP R3 R0 [str="updated_button_id"]
[189] GETTABUP R4 R0 [str="BUTTON_ID_NONE"]
[190] EQ R1 R3 R4
[191] JMP R0 19
[192] GETUPVAL R3 R11 R0
[193] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[194] GETTABUP R5 R0 [str="updated_button_id"]
[195] GETTABUP R6 R0 [str="button_is_edited"]
[196] CALL R3 R4 R1
[197] GETTABUP R3 R0 [str="layout_view"]
[198] SELF R3 R3 [str="get_pane"]
[199] LOADK R5 [str="cursor"]
[200] CALL R3 R3 R2
[201] SELF R3 R3 [str="set_visible"]
[202] LOADBOOL R5 true R0
[203] CALL R3 R3 R1
[204] GETUPVAL R3 R2 R0
[205] SELF R3 R3 [str="set_enable"]
[206] LOADBOOL R5 true R0
[207] CALL R3 R3 R1
[208] SETTABUP R0 [str="button_is_edited"] [bool=false]
[209] GETTABUP R3 R0 [str="BUTTON_ID_NONE"]
[210] SETTABUP R0 [str="updated_button_id"] R3
[211] GETUPVAL R3 R2 R0
[212] SELF R3 R3 [str="is_cancelled"]
[213] CALL R3 R2 R2
[214] EQ R0 R3 [bool=true]
[215] JMP R0 3
[216] GETTABUP R3 R0 [str="ComFrameActor"]
[217] GETTABLE R3 R3 [str="press_cancel"]
[218] CALL R3 R1 R1
[219] GETTABUP R3 R0 [str="ComFrameActor"]
[220] GETTABLE R3 R3 [str="is_cancelled"]
[221] CALL R3 R1 R2
[222] EQ R0 R3 [bool=true]
[223] JMP R0 8
[224] GETUPVAL R3 R12 R0
[225] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[226] CALL R3 R2 R2
[227] EQ R0 R3 [bool=true]
[228] JMP R0 155
[229] GETTABUP R3 R0 [str="SCENE_EXIT_CODE_CANCEL"]
[230] SETTABUP R0 [str="exit_code"] R3
[231] JMP R0 152
[232] GETTABUP R3 R0 [str="ComFrameActor"]
[233] GETTABLE R3 R3 [str="is_decided"]
[234] CALL R3 R1 R2
[235] EQ R0 R3 [bool=true]
[236] JMP R0 8
[237] GETUPVAL R3 R13 R0
[238] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[239] CALL R3 R2 R2
[240] EQ R0 R3 [bool=true]
[241] JMP R0 142
[242] GETTABUP R3 R0 [str="SCENE_EXIT_CODE_NORMAL"]
[243] SETTABUP R0 [str="exit_code"] R3
[244] JMP R0 139
[245] GETUPVAL R3 R2 R0
[246] SELF R3 R3 [str="get_selected_button_id"]
[247] CALL R3 R2 R2
[248] EQ R1 R3 R1
[249] JMP R0 60
[250] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[251] GETTABUP R5 R0 [str="CONTROLLER_JOY_CON"]
[252] EQ R0 R4 R5
[253] JMP R0 31
[254] GETUPVAL R4 R5 R0
[255] MOVE R5 R3 R0
[256] CALL R4 R2 R2
[257] EQ R0 R4 [bool=true]
[258] JMP R0 11
[259] GETUPVAL R4 R5 R0
[260] MOVE R5 R1 R0
[261] CALL R4 R2 R2
[262] EQ R0 R4 [bool=false]
[263] JMP R0 6
[264] GETTABUP R4 R0 [str="layout_view"]
[265] SELF R4 R4 [str="play_animation"]
[266] LOADK R6 [str="ctr_joy_chg_a"]
[267] LOADK R7 [float=1]
[268] CALL R4 R4 R1
[269] JMP R0 15
[270] GETUPVAL R4 R5 R0
[271] MOVE R5 R3 R0
[272] CALL R4 R2 R2
[273] EQ R0 R4 [bool=false]
[274] JMP R0 10
[275] GETUPVAL R4 R5 R0
[276] MOVE R5 R1 R0
[277] CALL R4 R2 R2
[278] EQ R0 R4 [bool=true]
[279] JMP R0 5
[280] GETTABUP R4 R0 [str="layout_view"]
[281] SELF R4 R4 [str="play_animation"]
[282] LOADK R6 [str="ctr_joy_chg_b"]
[283] LOADK R7 [float=1]
[284] CALL R4 R4 R1
[285] GETTABUP R4 R0 [str="BUTTON_ID_SAVE"]
[286] EQ R0 R1 R4
[287] JMP R0 3
[288] GETTABUP R4 R0 [str="ComFrameActor"]
[289] GETTABLE R4 R4 [str="unselect"]
[290] CALL R4 R1 R1
[291] MOVE R1 R3 R0
[292] GETUPVAL R4 R4 R0
[293] GETTABUP R5 R0 [str="CONTROLLER_TYPE"]
[294] MOVE R6 R1 R0
[295] CALL R4 R3 R1
[296] GETTABUP R4 R0 [str="BUTTON_ID_SAVE"]
[297] EQ R0 R1 R4
[298] JMP R0 11
[299] GETTABUP R4 R0 [str="ComFrameActor"]
[300] GETTABLE R4 R4 [str="set_focus"]
[301] LOADBOOL R5 true R0
[302] CALL R4 R2 R1
[303] GETTABUP R4 R0 [str="ComFrameActor"]
[304] GETTABLE R4 R4 [str="select"]
[305] CALL R4 R1 R1
[306] GETTABUP R4 R0 [str="UiSoundManager"]
[307] SELF R4 R4 [str="play_se_label"]
[308] LOADK R6 [str="se_system_cursor"]
[309] CALL R4 R3 R1
; end current if
[310] GETTABUP R4 R0 [str="BUTTON_ID_SAVE"]
[311] EQ R1 R1 R4
[312] JMP R0 14
[313] GETTABUP R4 R0 [str="ComFrameActor"]
[314] GETTABLE R4 R4 [str="is_selected"]
[315] CALL R4 R1 R2
[316] EQ R0 R4 [bool=true]
[317] JMP R0 9
[318] GETUPVAL R4 R2 R0
[319] SELF R4 R4 [str="select_button"]
[320] GETTABUP R6 R0 [str="BUTTON_ID_SAVE"]
[321] CALL R4 R3 R1
[322] GETTABUP R1 R0 [str="BUTTON_ID_SAVE"]
[323] GETUPVAL R4 R4 R0
[324] GETTABUP R5 R0 [str="CONTROLLER_TYPE"]
[325] MOVE R6 R1 R0
[326] CALL R4 R3 R1
[327] GETUPVAL R4 R2 R0
[328] SELF R4 R4 [str="get_decided_button_id"]
[329] CALL R4 R2 R2
[330] SETTABUP R0 [str="decided_button_id"] R4
[331] GETTABUP R4 R0 [str="decided_button_id"]
[332] GETTABUP R5 R0 [str="BUTTON_ID_TEST"]
[333] EQ R0 R4 R5
[334] JMP R0 12
[335] GETUPVAL R4 R14 R0
[336] GETTABUP R5 R0 [str="CONTROLLER_TYPE"]
[337] CALL R4 R2 R2
[338] EQ R0 R4 [bool=true]
[339] JMP R0 44
[340] GETTABUP R4 R0 [str="UiSoundManager"]
[341] SELF R4 R4 [str="play_se_label"]
[342] LOADK R6 [str="se_system_fixed"]
[343] CALL R4 R3 R1
[344] GETUPVAL R4 R15 R0
[345] CALL R4 R1 R1
[346] JMP R0 37
[347] GETTABUP R4 R0 [str="decided_button_id"]
[348] GETTABUP R5 R0 [str="BUTTON_ID_NONE"]
[349] EQ R1 R4 R5
[350] JMP R0 33
[351] GETTABUP R4 R0 [str="decided_button_id"]
[352] GETTABUP R5 R0 [str="BUTTON_ID_OPTION"]
[353] EQ R0 R4 R5
[354] JMP R0 4
[355] GETUPVAL R4 R2 R0
[356] SELF R4 R4 [str="set_focus"]
[357] LOADBOOL R6 false R0
[358] CALL R4 R3 R1
[359] GETUPVAL R4 R2 R0
[360] SELF R4 R4 [str="set_enable"]
[361] LOADBOOL R6 false R0
[362] CALL R4 R3 R1
[363] GETTABUP R4 R0 [str="layout_view"]
[364] SELF R4 R4 [str="get_pane"]
[365] LOADK R6 [str="cursor"]
[366] CALL R4 R3 R2
[367] SELF R4 R4 [str="set_visible"]
[368] LOADBOOL R6 false R0
[369] CALL R4 R3 R1
[370] GETTABUP R4 R0 [str="decided_button_id"]
[371] GETTABUP R5 R0 [str="BUTTON_ID_OPTION"]
[372] EQ R0 R4 R5
[373] JMP R0 4
[374] GETTABUP R4 R0 [str="ComFrameActor"]
[375] GETTABLE R4 R4 [str="set_button"]
[376] GETTABUP R5 R0 [str="COMFRAME_FOOTERBUTTON_NONE"]
[377] CALL R4 R2 R1
[378] GETTABUP R4 R0 [str="UiScriptPlayer"]
[379] GETTABLE R4 R4 [str="invoke"]
[380] LOADK R5 [str="open_sub_window"]
[381] GETTABUP R6 R0 [str="CONTROLLER_TYPE"]
[382] GETTABUP R7 R0 [str="decided_button_id"]
[383] CALL R4 R4 R1
; end of else block
[384] GETTABUP R3 R0 [str="exit_code"]
[385] GETTABUP R4 R0 [str="SCENE_EXIT_CODE_NONE"]
[386] EQ R0 R3 R4
[387] JMP R0 6
[388] GETTABUP R3 R0 [str="coroutine"]
[389] GETTABLE R3 R3 [str="yield"]
[390] CALL R3 R1 R1
[391] LOADBOOL R3 false R0
[392] TEST R3 R0 R0
[393] JMP R0 -283
[394] GETTABUP R2 R0 [str="layout_root"]
[395] SELF R2 R2 [str="set_enable_input"]
[396] LOADBOOL R4 false R0
[397] CALL R2 R3 R1
[398] GETTABUP R2 R0 [str="exit_code"]
[399] GETTABUP R3 R0 [str="SCENE_EXIT_CODE_CANCEL"]
[400] EQ R0 R2 R3
[401] JMP R0 5
[402] GETTABUP R2 R6 [str="play_animation_and_wait"]
[403] GETTABUP R3 R0 [str="layout_view"]
[404] LOADK R4 [str="r_out"]
[405] CALL R2 R3 R1
[406] JMP R0 4
[407] GETTABUP R2 R6 [str="play_animation_and_wait"]
[408] GETTABUP R3 R0 [str="layout_view"]
[409] LOADK R4 [str="out"]
[410] CALL R2 R3 R1
[411] RETURN R0 R1 R0
k0 = [str="layout_view"]
k1 = [str="layout_root"]
k2 = [str="get_root_view"]
k3 = [str="exit_code"]
k4 = [str="SCENE_EXIT_CODE_NONE"]
k5 = [str="CONTROLLER_TYPE"]
k6 = [str="clear_selection"]
k7 = [str="select_button"]
k8 = [str="BUTTON_ID_INIT"]
k9 = [str="set_focus"]
k10 = [str="set_enable"]
k11 = [str="ComFrameActor"]
k12 = [str="set_back_enable"]
k13 = [str="set_save_button"]
k14 = [str="COMFRAME_FOOTERBUTTON_LARGE_100"]
k15 = [str="set_footer_area"]
k16 = [str="COMFRAME_FOOTERMESSAGEAREA_NONE"]
k17 = [str="unselect"]
k18 = [str="CONTROLLER_JOY_CON"]
k19 = [bool=true]
k20 = [str="play_animation"]
k21 = [str="ctr_joy_chg_a"]
k22 = [float=1]
k23 = [str="ctr_joy_chg_b"]
k24 = [str="IS_BACK"]
k25 = [str="r_in"]
k26 = [str="in"]
k27 = [str="fade_in"]
k28 = [str="set_enable_input"]
k29 = [str="UiScriptPlayer"]
k30 = [str="invoke"]
k31 = [str="is_default_settings"]
k32 = [str="button_is_edited"]
k33 = [bool=false]
k34 = [str="updated_button_id"]
k35 = [str="BUTTON_ID_NONE"]
k36 = [str="is_enable"]
k37 = [str="get_decided_button_id"]
k38 = [str="BUTTON_ID_RESET"]
k39 = [str="AppPopupManager"]
k40 = [str="open_database_args"]
k41 = [str="ID_POPUP_OPT_BTN_CTRL_INIT"]
k42 = [str="s"]
k43 = [str="is_busy"]
k44 = [str="get_result"]
k45 = [str="POPUP_RESULT_YES"]
k46 = [str="coroutine"]
k47 = [str="yield"]
k48 = [str="BUTTON_ID_OPTION"]
k49 = [str="get_pane"]
k50 = [str="cursor"]
k51 = [str="set_visible"]
k52 = [str="is_cancelled"]
k53 = [str="press_cancel"]
k54 = [str="SCENE_EXIT_CODE_CANCEL"]
k55 = [str="is_decided"]
k56 = [str="SCENE_EXIT_CODE_NORMAL"]
k57 = [str="get_selected_button_id"]
k58 = [str="BUTTON_ID_SAVE"]
k59 = [str="select"]
k60 = [str="UiSoundManager"]
k61 = [str="play_se_label"]
k62 = [str="se_system_cursor"]
k63 = [str="is_selected"]
k64 = [str="decided_button_id"]
k65 = [str="BUTTON_ID_TEST"]
k66 = [str="se_system_fixed"]
k67 = [str="set_button"]
k68 = [str="COMFRAME_FOOTERBUTTON_NONE"]
k69 = [str="open_sub_window"]
k70 = [str="play_animation_and_wait"]
k71 = [str="r_out"]
k72 = [str="out"]

[func CLOSURE_18]
u0 = u0
u1 = r23
u2 = r5
[0] MOVE R3 R0 R0
[1] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[2] GETTABUP R5 R0 [str="CONTROLLER_FULL_KEY"]
[3] EQ R0 R4 R5
[4] JMP R0 104
[5] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_X"]
[6] EQ R0 R0 R4
[7] JMP R0 22
[8] LT R0 [float=0] R2
[9] JMP R0 166
[10] LT R0 [float=0] R1
[11] JMP R0 2
[12] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[13] JMP R0 162
[14] LT R0 R1 [float=0]
[15] JMP R0 2
[16] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[17] JMP R0 158
[18] GETUPVAL R4 R1 R0
[19] GETTABUP R5 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[20] EQ R1 R4 R5
[21] JMP R0 4
[22] GETUPVAL R4 R1 R0
[23] GETTABUP R5 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[24] EQ R0 R4 R5
[25] JMP R0 2
[26] GETUPVAL R3 R1 R0
[27] JMP R0 148
[28] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[29] JMP R0 146
[30] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[31] EQ R1 R0 R4
[32] JMP R0 3
[33] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[34] EQ R0 R0 R4
[35] JMP R0 8
[36] LT R0 [float=0] R2
[37] JMP R0 2
[38] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_B"]
[39] JMP R0 136
[40] LT R0 R2 [float=0]
[41] JMP R0 134
[42] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_X"]
[43] JMP R0 132
[44] GETTABUP R4 R0 [str="BUTTON_ID_FK_BUTTON_B"]
[45] EQ R0 R0 R4
[46] JMP R0 26
[47] LT R0 R2 [float=0]
[48] JMP R0 20
[49] LT R0 [float=0] R1
[50] JMP R0 2
[51] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[52] JMP R0 123
[53] LT R0 R1 [float=0]
[54] JMP R0 2
[55] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[56] JMP R0 119
[57] GETUPVAL R4 R1 R0
[58] GETTABUP R5 R0 [str="BUTTON_ID_FK_BUTTON_A"]
[59] EQ R1 R4 R5
[60] JMP R0 4
[61] GETUPVAL R4 R1 R0
[62] GETTABUP R5 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[63] EQ R0 R4 R5
[64] JMP R0 2
[65] GETUPVAL R3 R1 R0
[66] JMP R0 109
[67] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[68] JMP R0 107
[69] LT R0 R1 [float=0]
[70] JMP R0 105
[71] GETTABUP R3 R0 [str="BUTTON_ID_FK_STICK_R"]
[72] JMP R0 103
[73] GETTABUP R4 R0 [str="BUTTON_ID_FK_STICK_R"]
[74] EQ R0 R0 R4
[75] JMP R0 19
[76] LT R0 R2 [float=0]
[77] JMP R0 2
[78] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_Y"]
[79] JMP R0 96
[80] LT R0 [float=0] R2
[81] JMP R0 5
[82] GETUPVAL R4 R2 R0
[83] TEST R4 R0 R0
[84] JMP R0 91
[85] GETTABUP R3 R0 [str="BUTTON_ID_TEST"]
[86] JMP R0 89
[87] LT R0 [float=0] R1
[88] JMP R0 2
[89] GETTABUP R3 R0 [str="BUTTON_ID_FK_BUTTON_B"]
[90] JMP R0 85
[91] LT R0 R1 [float=0]
[92] JMP R0 83
[93] GETTABUP R3 R0 [str="BUTTON_ID_FK_DOWN"]
[94] JMP R0 81
[95] GETTABUP R4 R0 [str="BUTTON_ID_FK_DOWN"]
[96] EQ R0 R0 R4
[97] JMP R0 4
[98] LT R0 [float=0] R1
[99] JMP R0 76
[100] GETTABUP R3 R0 [str="BUTTON_ID_FK_STICK_R"]
[101] JMP R0 74
[102] GETTABUP R4 R0 [str="BUTTON_ID_TEST"]
[103] EQ R0 R0 R4
[104] JMP R0 71
[105] LT R0 R2 [float=0]
[106] JMP R0 69
[107] GETTABUP R3 R0 [str="BUTTON_ID_FK_STICK_R"]
[108] JMP R0 67
[109] GETTABUP R4 R0 [str="CONTROLLER_TYPE"]
[110] GETTABUP R5 R0 [str="CONTROLLER_JOY_CON"]
[111] EQ R0 R4 R5
[112] JMP R0 63
[113] GETTABUP R4 R0 [str="BUTTON_ID_JC_UP"]
[114] EQ R0 R0 R4
[115] JMP R0 22
[116] LT R0 [float=0] R1
[117] JMP R0 2
[118] GETTABUP R3 R0 [str="BUTTON_ID_JC_RIGHT"]
[119] JMP R0 56
[120] LT R0 R1 [float=0]
[121] JMP R0 2
[122] GETTABUP R3 R0 [str="BUTTON_ID_JC_LEFT"]
[123] JMP R0 52
[124] LT R0 [float=0] R2
[125] JMP R0 50
[126] GETUPVAL R4 R1 R0
[127] GETTABUP R5 R0 [str="BUTTON_ID_JC_RIGHT"]
[128] EQ R1 R4 R5
[129] JMP R0 4
[130] GETUPVAL R4 R1 R0
[131] GETTABUP R5 R0 [str="BUTTON_ID_JC_LEFT"]
[132] EQ R0 R4 R5
[133] JMP R0 2
[134] GETUPVAL R3 R1 R0
[135] JMP R0 40
[136] GETTABUP R3 R0 [str="BUTTON_ID_JC_LEFT"]
[137] JMP R0 38
[138] GETTABUP R4 R0 [str="BUTTON_ID_JC_RIGHT"]
[139] EQ R1 R0 R4
[140] JMP R0 3
[141] GETTABUP R4 R0 [str="BUTTON_ID_JC_LEFT"]
[142] EQ R0 R0 R4
[143] JMP R0 8
[144] LT R0 [float=0] R2
[145] JMP R0 2
[146] GETTABUP R3 R0 [str="BUTTON_ID_JC_DOWN"]
[147] JMP R0 28
[148] LT R0 R2 [float=0]
[149] JMP R0 26
[150] GETTABUP R3 R0 [str="BUTTON_ID_JC_UP"]
[151] JMP R0 24
[152] GETTABUP R4 R0 [str="BUTTON_ID_JC_DOWN"]
[153] EQ R0 R0 R4
[154] JMP R0 21
[155] LT R0 [float=0] R1
[156] JMP R0 2
[157] GETTABUP R3 R0 [str="BUTTON_ID_JC_RIGHT"]
[158] JMP R0 17
[159] LT R0 R1 [float=0]
[160] JMP R0 2
[161] GETTABUP R3 R0 [str="BUTTON_ID_JC_LEFT"]
[162] JMP R0 13
[163] LT R0 R2 [float=0]
[164] JMP R0 11
[165] GETUPVAL R4 R1 R0
[166] GETTABUP R5 R0 [str="BUTTON_ID_JC_RIGHT"]
[167] EQ R1 R4 R5
[168] JMP R0 4
[169] GETUPVAL R4 R1 R0
[170] GETTABUP R5 R0 [str="BUTTON_ID_JC_LEFT"]
[171] EQ R0 R4 R5
[172] JMP R0 2
[173] GETUPVAL R3 R1 R0
[174] JMP R0 1
[175] GETTABUP R3 R0 [str="BUTTON_ID_JC_LEFT"]
[176] GETTABUP R4 R0 [str="BUTTON_ID_SAVE"]
[177] EQ R0 R0 R4
[178] JMP R0 7
[179] LT R0 R1 [float=0]
[180] JMP R0 11
[181] GETUPVAL R4 R2 R0
[182] TEST R4 R0 R0
[183] JMP R0 8
[184] GETTABUP R3 R0 [str="BUTTON_ID_TEST"]
[185] JMP R0 6
[186] GETTABUP R4 R0 [str="BUTTON_ID_TEST"]
[187] EQ R0 R0 R4
[188] JMP R0 3
[189] LT R0 [float=0] R1
[190] JMP R0 1
[191] GETTABUP R3 R0 [str="BUTTON_ID_SAVE"]
[192] SETUPVAL R0 R1 R0
[193] RETURN R3 R2 R0
[194] RETURN R0 R1 R0
k0 = [str="CONTROLLER_TYPE"]
k1 = [str="CONTROLLER_FULL_KEY"]
k2 = [str="BUTTON_ID_FK_BUTTON_X"]
k3 = [float=0]
k4 = [str="BUTTON_ID_FK_BUTTON_A"]
k5 = [str="BUTTON_ID_FK_BUTTON_Y"]
k6 = [str="BUTTON_ID_FK_BUTTON_B"]
k7 = [str="BUTTON_ID_FK_STICK_R"]
k8 = [str="BUTTON_ID_TEST"]
k9 = [str="BUTTON_ID_FK_DOWN"]
k10 = [str="CONTROLLER_JOY_CON"]
k11 = [str="BUTTON_ID_JC_UP"]
k12 = [str="BUTTON_ID_JC_RIGHT"]
k13 = [str="BUTTON_ID_JC_LEFT"]
k14 = [str="BUTTON_ID_JC_DOWN"]
k15 = [str="BUTTON_ID_SAVE"]

