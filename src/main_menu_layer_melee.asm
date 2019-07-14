; R0 = {}
[0] NEWTABLE R0 R0 R0
; R1 = U0["button"]
[1] GETTABUP R1 R0 [str="button"]
; R1, R2 = R1["add_id"], R1
[2] SELF R1 R1 [str="add_id"]
; R3, R4, R5 = "MELEE", "NORMAL", 0x1
[3] LOADK R3 [str="MELEE"]
[4] LOADK R4 [str="NORMAL"]
[5] LOADK R5 [u64=0x1]
; R1 = button:add_id("MELEE", "NORMAL", 0x1)
[6] CALL R1 R5 R1
; R1 = U0["button"]
[7] GETTABUP R1 R0 [str="button"]
; R1, R2 = R1["add_id"], R1
[8] SELF R1 R1 [str="add_id"]
; R3, R4, R5 = "MELEE", "TEAMCOMPE", 0x2
[9] LOADK R3 [str="MELEE"]
[10] LOADK R4 [str="TEAMCOMPE"]
[11] LOADK R5 [u64=0x2]
; R1 = button:add_id("MELEE", "TEAMCOMPE", 0x2)
[12] CALL R1 R5 R1
; R1 = U0["button"]
[13] GETTABUP R1 R0 [str="button"]
; R1, R2 = R1["add_id"], R1
[14] SELF R1 R1 [str="add_id"]
; R3, R4, R5 = "MELEE", "TOURNAMENT", 0x3
[15] LOADK R3 [str="MELEE"]
[16] LOADK R4 [str="TOURNAMENT"]
[17] LOADK R5 [u64=0x3]
; R1 = button:add_id("MELEE", "TOURNAMENT", 0x3)
[18] CALL R1 R5 R1
; R1 = U0["button"]
[19] GETTABUP R1 R0 [str="button"]
; R1, R2 = R1["add_id"], R1
[20] SELF R1 R1 [str="add_id"]
; R3, R4, R5 = "MELEE", "SPECIAL", 0x4
[21] LOADK R3 [str="MELEE"]
[22] LOADK R4 [str="SPECIAL"]
[23] LOADK R5 [u64=0x4]
; R1 = button:add_id("MELEE", "SPECIAL", 0x4)
[24] CALL R1 R5 R1
; R1 = U0["button"]
[25] GETTABUP R1 R0 [str="button"]
; R1, R2 = R1["add_id"], R1
[26] SELF R1 R1 [str="add_id"]
; R3, R4, R5 = "MELEE", "OPTION", 0x5
[27] LOADK R3 [str="MELEE"]
[28] LOADK R4 [str="OPTION"]
[29] LOADK R5 [u64=0x5]
; button:add_id("MELEE", "OPTION", 0x5)
[30] CALL R1 R5 R1
[31] CLOSURE R1 0
; R0["initialize"] = CLOSURE_0
[32] SETTABLE R0 [str="initialize"] R1
[33] CLOSURE R1 1
; R0["update_state_in"] = CLOSURE 1
[34] SETTABLE R0 [str="update_state_in"] R1
[35] CLOSURE R1 2
; R0["update_state_main"] = CLOSURE 2
[36] SETTABLE R0 [str="update_state_main"] R1
[37] CLOSURE R1 3
; R0["update_state_out"] = CLOSURE 3
[38] SETTABLE R0 [str="update_state_out"] R1
; return R0
[39] RETURN R0 R2 R0
[40] RETURN R0 R1 R0
u0 = [onstack=true]
k0 = [str="button"]
k1 = [str="add_id"]
k2 = [str="MELEE"]
k3 = [str="NORMAL"]
k4 = [u64=0x1]
k5 = [str="TEAMCOMPE"]
k6 = [u64=0x2]
k7 = [str="TOURNAMENT"]
k8 = [u64=0x3]
k9 = [str="SPECIAL"]
k10 = [u64=0x4]
k11 = [str="OPTION"]
k12 = [u64=0x5]
k13 = [str="initialize"]
k14 = [str="update_state_in"]
k15 = [str="update_state_main"]
k16 = [str="update_state_out"]

[func CLOSURE_0]
[0] GETTABUP R1 R0 [str="LayoutRootList"]
[1] GETTABLE R1 R1 [str="main_menu"]
[2] SETTABLE R0 [str="layout_root"] R1
[3] GETTABLE R1 R0 [str="layout_root"]
[4] SELF R1 R1 [str="get_root_view"]
[5] CALL R1 R2 R2
[6] SETTABLE R0 [str="layout_view"] R1
[7] GETTABLE R1 R0 [str="layout_root"]
[8] SELF R1 R1 [str="get_virtual_input"]
[9] CALL R1 R2 R2
[10] SETTABLE R0 [str="virtual_input"] R1
[11] SETTABLE R0 [str="in_anim"] [str="appear_melee_top"]
[12] SETTABLE R0 [str="out_anim"] [str="disappear_melee_top"]
[13] NEWTABLE R1 R0 R0
[14] SETTABLE R0 [str="header"] R1
[15] GETTABLE R1 R0 [str="header"]
[16] GETTABLE R2 R0 [str="layout_view"]
[17] SELF R2 R2 [str="get_parts"]
[18] LOADK R4 [str="set_header_melee"]
[19] CALL R2 R3 R2
[20] SETTABLE R1 [str="layout_view"] R2
[21] GETTABUP R1 R0 [str="LayoutButtonSelector"]
[22] GETTABLE R1 R1 [str="new"]
[23] CALL R1 R1 R2
[24] SETTABLE R0 [str="selector"] R1
[25] SETTABLE R0 [str="selector_parts"] [str="set_menu_melee"]
[26] SETTABLE R0 [str="selector_name"] [str="selector_0"]
[27] GETTABUP R1 R0 [str="LayoutButtonSelectorConfig"]
[28] GETTABLE R1 R1 [str="new"]
[29] CALL R1 R1 R2
[30] SETTABLE R0 [str="selector_config"] R1
[31] GETTABLE R1 R0 [str="selector_config"]
[32] SETTABLE R1 [str="bring_front_on_select"] [bool=true]
[33] GETTABLE R1 R0 [str="selector_config"]
[34] SETTABLE R1 [str="directional_degree"] [u64=0x3C]
[35] GETTABLE R1 R0 [str="selector_config"]
[36] SETTABLE R1 [str="use_cursor_looping"] [bool=false]
[37] GETTABLE R1 R0 [str="selector_config"]
[38] SETTABLE R1 [str="is_unique_se"] [bool=true]
[39] GETTABLE R1 R0 [str="selector_config"]
[40] SETTABLE R1 [str="decide_se_label_code"] [str="se_system_fixed_s"]
[41] GETTABLE R1 R0 [str="selector_config"]
[42] SETTABLE R1 [str="cancel_se_label_code"] [str="se_system_cancel"]
[43] GETTABLE R1 R0 [str="selector_config"]
[44] SETTABLE R1 [str="cursor_se_label_code"] [str="se_system_cursor_l"]
[45] GETTABUP R1 R0 [str="button"]
[46] GETTABLE R1 R1 [str="MELEE_NORMAL"]
[47] SETTABLE R0 [str="selector_initial_id"] R1
[48] NEWTABLE R1 R0 R0
[49] SETTABLE R0 [str="button_table"] R1
[50] GETTABLE R1 R0 [str="button_table"]
[51] GETTABUP R2 R0 [str="button"]
[52] GETTABLE R2 R2 [str="MELEE_NORMAL"]
[53] NEWTABLE R3 R0 R2
[54] SETTABLE R3 [str="parts"] [str="set_parts_btn_00"]
[55] GETTABUP R4 R0 [str="SEQUENCE_MELEE_NORMAL"]
[56] SETTABLE R3 [str="sequence"] R4
[57] SETTABLE R1 R2 R3
[58] GETTABLE R1 R0 [str="button_table"]
[59] GETTABUP R2 R0 [str="button"]
[60] GETTABLE R2 R2 [str="MELEE_TEAMCOMPE"]
[61] NEWTABLE R3 R0 R2
[62] SETTABLE R3 [str="parts"] [str="set_parts_btn_01"]
[63] GETTABUP R4 R0 [str="SEQUENCE_MELEE_TEAM_COMPE"]
[64] SETTABLE R3 [str="sequence"] R4
[65] SETTABLE R1 R2 R3
[66] GETTABLE R1 R0 [str="button_table"]
[67] GETTABUP R2 R0 [str="button"]
[68] GETTABLE R2 R2 [str="MELEE_TOURNAMENT"]
[69] NEWTABLE R3 R0 R2
[70] SETTABLE R3 [str="parts"] [str="set_parts_btn_02"]
[71] GETTABUP R4 R0 [str="SEQUENCE_MELEE_TOURNAMENT"]
[72] SETTABLE R3 [str="sequence"] R4
[73] SETTABLE R1 R2 R3
[74] GETTABLE R1 R0 [str="button_table"]
[75] GETTABUP R2 R0 [str="button"]
[76] GETTABLE R2 R2 [str="MELEE_SPECIAL"]
[77] NEWTABLE R3 R0 R2
[78] SETTABLE R3 [str="parts"] [str="set_parts_btn_03"]
[79] GETTABUP R4 R0 [str="STATE_SPECIAL_IN"]
[80] SETTABLE R3 [str="state"] R4
[81] SETTABLE R1 R2 R3
[82] GETTABLE R1 R0 [str="button_table"]
[83] GETTABUP R2 R0 [str="button"]
[84] GETTABLE R2 R2 [str="MELEE_OPTION"]
[85] NEWTABLE R3 R0 R2
[86] SETTABLE R3 [str="parts"] [str="set_parts_btn_04"]
[87] GETTABUP R4 R0 [str="SEQUENCE_OPTION_BUTTON"]
[88] SETTABLE R3 [str="sequence"] R4
[89] SETTABLE R1 R2 R3
[90] NEWTABLE R1 R0 R0
[91] SETTABLE R0 [str="footer_table"] R1
[92] GETTABLE R1 R0 [str="footer_table"]
[93] GETTABUP R2 R0 [str="button"]
[94] GETTABLE R2 R2 [str="MELEE_NORMAL"]
[95] NEWTABLE R3 R0 R1
[96] SETTABLE R3 [str="label"] [str="mnu_mel_top_help_melee_normal"]
[97] SETTABLE R1 R2 R3
[98] GETTABLE R1 R0 [str="footer_table"]
[99] GETTABUP R2 R0 [str="button"]
[100] GETTABLE R2 R2 [str="MELEE_TEAMCOMPE"]
[101] NEWTABLE R3 R0 R1
[102] SETTABLE R3 [str="label"] [str="mnu_mel_top_help_melee_compe"]
[103] SETTABLE R1 R2 R3
[104] GETTABLE R1 R0 [str="footer_table"]
[105] GETTABUP R2 R0 [str="button"]
[106] GETTABLE R2 R2 [str="MELEE_TOURNAMENT"]
[107] NEWTABLE R3 R0 R1
[108] SETTABLE R3 [str="label"] [str="mnu_mel_top_help_local_tourn"]
[109] SETTABLE R1 R2 R3
[110] GETTABLE R1 R0 [str="footer_table"]
[111] GETTABUP R2 R0 [str="button"]
[112] GETTABLE R2 R2 [str="MELEE_SPECIAL"]
[113] NEWTABLE R3 R0 R1
[114] SETTABLE R3 [str="label"] [str="mnu_mel_top_help_melee_special"]
[115] SETTABLE R1 R2 R3
[116] GETTABLE R1 R0 [str="footer_table"]
[117] GETTABUP R2 R0 [str="button"]
[118] GETTABLE R2 R2 [str="MELEE_OPTION"]
[119] NEWTABLE R3 R0 R1
[120] SETTABLE R3 [str="label"] [str="mnu_mel_top_help_melee_option"]
[121] SETTABLE R1 R2 R3
[122] NEWTABLE R1 R0 R0
[123] SETTABLE R0 [str="preview_table"] R1
[124] GETTABLE R1 R0 [str="preview_table"]
[125] GETTABLE R2 R0 [str="layout_view"]
[126] SELF R2 R2 [str="get_parts"]
[127] LOADK R4 [str="set_preview_melee"]
[128] CALL R2 R3 R2
[129] SETTABLE R1 [str="layout_view"] R2
[130] GETTABLE R1 R0 [str="preview_table"]
[131] GETTABUP R2 R0 [str="button"]
[132] GETTABLE R2 R2 [str="MELEE_NORMAL"]
[133] NEWTABLE R3 R0 R1
[134] SETTABLE R3 [str="tag"] [str="select_normal"]
[135] SETTABLE R1 R2 R3
[136] GETTABLE R1 R0 [str="preview_table"]
[137] GETTABUP R2 R0 [str="button"]
[138] GETTABLE R2 R2 [str="MELEE_TEAMCOMPE"]
[139] NEWTABLE R3 R0 R1
[140] SETTABLE R3 [str="tag"] [str="select_compe"]
[141] SETTABLE R1 R2 R3
[142] GETTABLE R1 R0 [str="preview_table"]
[143] GETTABUP R2 R0 [str="button"]
[144] GETTABLE R2 R2 [str="MELEE_TOURNAMENT"]
[145] NEWTABLE R3 R0 R1
[146] SETTABLE R3 [str="tag"] [str="select_tourn"]
[147] SETTABLE R1 R2 R3
[148] GETTABLE R1 R0 [str="preview_table"]
[149] GETTABUP R2 R0 [str="button"]
[150] GETTABLE R2 R2 [str="MELEE_SPECIAL"]
[151] NEWTABLE R3 R0 R1
[152] SETTABLE R3 [str="tag"] [str="select_special"]
[153] SETTABLE R1 R2 R3
[154] GETTABLE R1 R0 [str="preview_table"]
[155] GETTABUP R2 R0 [str="button"]
[156] GETTABLE R2 R2 [str="MELEE_OPTION"]
[157] NEWTABLE R3 R0 R1
[158] SETTABLE R3 [str="tag"] [str="select_option"]
[159] SETTABLE R1 R2 R3
[160] NEWTABLE R1 R0 R0
[161] SETTABLE R0 [str="howto_table"] R1
[162] GETTABLE R1 R0 [str="howto_table"]
[163] GETTABUP R2 R0 [str="button"]
[164] GETTABLE R2 R2 [str="MELEE_TEAMCOMPE"]
[165] NEWTABLE R3 R0 R1
[166] SETTABLE R3 [str="id"] [str="UI_HOWTOPLAY_TEAM_COMPE_TOP"]
[167] SETTABLE R1 R2 R3
[168] GETTABLE R1 R0 [str="howto_table"]
[169] GETTABUP R2 R0 [str="button"]
[170] GETTABLE R2 R2 [str="MELEE_TOURNAMENT"]
[171] NEWTABLE R3 R0 R1
[172] SETTABLE R3 [str="id"] [str="UI_HOWTOPLAY_TOURNAMENT_TOP"]
[173] SETTABLE R1 R2 R3
[174] RETURN R0 R1 R0
u0 = [onstack=false]
k0 = [str="layout_root"]
k1 = [str="LayoutRootList"]
k2 = [str="main_menu"]
k3 = [str="layout_view"]
k4 = [str="get_root_view"]
k5 = [str="virtual_input"]
k6 = [str="get_virtual_input"]
k7 = [str="in_anim"]
k8 = [str="appear_melee_top"]
k9 = [str="out_anim"]
k10 = [str="disappear_melee_top"]
k11 = [str="header"]
k12 = [str="get_parts"]
k13 = [str="set_header_melee"]
k14 = [str="selector"]
k15 = [str="LayoutButtonSelector"]
k16 = [str="new"]
k17 = [str="selector_parts"]
k18 = [str="set_menu_melee"]
k19 = [str="selector_name"]
k20 = [str="selector_0"]
k21 = [str="selector_config"]
k22 = [str="LayoutButtonSelectorConfig"]
k23 = [str="bring_front_on_select"]
k24 = [bool=true]
k25 = [str="directional_degree"]
k26 = [u64=0x3C]
k27 = [str="use_cursor_looping"]
k28 = [bool=false]
k29 = [str="is_unique_se"]
k30 = [str="decide_se_label_code"]
k31 = [str="se_system_fixed_s"]
k32 = [str="cancel_se_label_code"]
k33 = [str="se_system_cancel"]
k34 = [str="cursor_se_label_code"]
k35 = [str="se_system_cursor_l"]
k36 = [str="selector_initial_id"]
k37 = [str="button"]
k38 = [str="MELEE_NORMAL"]
k39 = [str="button_table"]
k40 = [str="parts"]
k41 = [str="set_parts_btn_00"]
k42 = [str="sequence"]
k43 = [str="SEQUENCE_MELEE_NORMAL"]
k44 = [str="MELEE_TEAMCOMPE"]
k45 = [str="set_parts_btn_01"]
k46 = [str="SEQUENCE_MELEE_TEAM_COMPE"]
k47 = [str="MELEE_TOURNAMENT"]
k48 = [str="set_parts_btn_02"]
k49 = [str="SEQUENCE_MELEE_TOURNAMENT"]
k50 = [str="MELEE_SPECIAL"]
k51 = [str="set_parts_btn_03"]
k52 = [str="state"]
k53 = [str="STATE_SPECIAL_IN"]
k54 = [str="MELEE_OPTION"]
k55 = [str="set_parts_btn_04"]
k56 = [str="SEQUENCE_OPTION_BUTTON"]
k57 = [str="footer_table"]
k58 = [str="label"]
k59 = [str="mnu_mel_top_help_melee_normal"]
k60 = [str="mnu_mel_top_help_melee_compe"]
k61 = [str="mnu_mel_top_help_local_tourn"]
k62 = [str="mnu_mel_top_help_melee_special"]
k63 = [str="mnu_mel_top_help_melee_option"]
k64 = [str="preview_table"]
k65 = [str="set_preview_melee"]
k66 = [str="tag"]
k67 = [str="select_normal"]
k68 = [str="select_compe"]
k69 = [str="select_tourn"]
k70 = [str="select_special"]
k71 = [str="select_option"]
k72 = [str="howto_table"]
k73 = [str="id"]
k74 = [str="UI_HOWTOPLAY_TEAM_COMPE_TOP"]
k75 = [str="UI_HOWTOPLAY_TOURNAMENT_TOP"]

[func CLOSURE_1]
[0] GETTABUP R1 R0 [str="common"]
[1] GETTABLE R1 R1 [str="update_state_in"]
[2] MOVE R2 R0 R0
[3] CALL R1 R2 R1
[4] RETURN R0 R1 R0
u0 = [onstack=false]
k0 = [str="common"]
k1 = [str="update_state_in"]

[func CLOSURE_2]
[0] GETTABUP R1 R0 [str="common"]
[1] GETTABLE R1 R1 [str="update_state_main"]
[2] MOVE R2 R0 R0
[3] CALL R1 R2 R1
[4] RETURN R0 R1 R0
u0 = [onstack=false]
k0 = [str="common"]
k1 = [str="update_state_main"]

[func CLOSURE_3]
[0] GETTABUP R1 R0 [str="common"]
[1] GETTABLE R1 R1 [str="update_state_out"]
[2] MOVE R2 R0 R0
[3] CALL R1 R2 R1
[4] RETURN R0 R1 R0
u0 = [onstack=false]
k0 = [str="common"]
k1 = [str="update_state_out"]
