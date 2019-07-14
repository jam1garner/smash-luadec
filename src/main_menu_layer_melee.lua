local obj = {}
button:add_id("MELEE", "NORMAL", 0x1)
button:add_id("MELEE", "TEAMCOMPE", 0x2)
button:add_id("MELEE", "TOURNAMENT", 0x3)
button:add_id("MELEE", "SPECIAL", 0x4)
button:add_id("MELEE", "OPTION", 0x5)

function obj:initialize()
    self.layout_root = LayoutRootList.main_menu
    self.layout_view = self.layout_root:get_root_view()
    self.virtual_input = self.layout_root:get_virtual_input()
    self.in_anim = "appear_melee_top"
    self.out_anim = "disappear_melee_top"
    self.header = {}
    self.header.layout_view = self.layout_view:get_parts("set_header_melee")
    self.selector = LayoutButtonSelector.new()
    self.selector_parts = "set_menu_melee"
    self.selector_name = "selector_0"
    self.selector_config = LayoutButtonSelectorConfig.new()
    self.selector_config.bring_front_on_select = true
    self.selector_config.directional_degree = 60
    self.selector_config.use_cursor_looping = false
    self.selector_config.is_unique_se = true
    self.selector_config.decide_se_label_code = "se_system_fixed_s"
    self.selector_config.cancel_se_label_code = "se_system_cancel"
    self.selector_config.cursor_se_label_code = "se_system_cursor_l"
    self.selector_initial_id = button.MELEE_NORMAL
    self.button_table = {}
    self.button_table[button.MELEE_NORMAL] = {
        parts = "set_parts_btn_00",
        sequence = SEQUENCE_MELEE_NORMAL
    }
    self.button_table[button.MELEE_TEAMCOMPE] = {
        parts = "set_parts_btn_01",
        sequence = SEQUENCE_MELEE_TEAM_COMPE
    }
    self.button_table[button.MELEE_TOURNAMENT] = {
        parts = "set_parts_btn_02",
        sequence = SEQUENCE_MELEE_TOURNAMENT
    }
    self.button_table[button.MELEE_SPECIAL] = {
        parts = "set_parts_btn_03",
        sequence = SEQUENCE_MELEE_SPECIAL_IN
    }
    self.button_table[button.MELEE_OPTION] = {
        parts = "set_parts_btn_04",
        sequence = SEQUENCE_OPTION_BUTTON
    }
    self.footer_table = {}
    self.footer_table[button.MELEE_NORMAL] = {
        label = "mnu_mel_top_help_melee_normal"
    }
    self.footer_table[button.MELEE_TEAMCOMPE] = {
        label = "mnu_mel_top_help_melee_compe"
    }
    self.footer_table[button.MELEE_TOURNAMENT] = {
        label = "mnu_mel_top_help_local_tourn"
    }
    self.footer_table[button.MELEE_SPECIAL] = {
        label = "mnu_mel_top_help_melee_special"
    }
    self.footer_table[button.MELEE_OPTION] = {
        label = "mnu_mel_top_help_melee_option"
    }
    self.preview_table = {}
    self.preview_table.layout_view = self.layout_view:get_parts("set_preview_melee")
    self.preview_table[button.MELEE_NORMAL] = {
        tag = "select_normal"
    }
    self.preview_table[button.MELEE_TEAMCOMPE] = {
        tag = "select_compe"
    }
    self.preview_table[button.MELEE_TOURNAMENT] = {
        tag = "select_tourn"
    }
    self.preview_table[button.MELEE_SPECIAL] = {
        tag = "select_special"
    }
    self.preview_table[button.MELEE_OPTION] = {
        tag = "select_option"
    }
    self.howto_table = {}
    self.howto_table[button.MELEE_TEAMCOMPE] = {
        id = "UI_HOWTOPLAY_TEAM_COMPE_TOP"
    }
    self.howto_table[button.MELEE_TOURNAMENT] = {
        id = "UI_HOWTOPLAY_TOURNAMENT_TOP"
    }
end

function obj:update_state_in()
    common.update_state_in(self)
end

function obj:update_state_main()
    common.update_state_main(self)
end

function obj:update_state_out()
    common.update_state_out(self)
end

return obj
