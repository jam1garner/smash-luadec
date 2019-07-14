local obj = {}
button:add_id("MELEE", "NORMAL", 0x1)
button:add_id("MELEE", "TEAMCOMPE", 0x2)
button:add_id("MELEE", "TOURNAMENT", 0x3)
button:add_id("MELEE", "SPECIAL", 0x4)
button:add_id("MELEE", "OPTION", 0x5)

function obj:initialize()
    self.layout_root = LayoutRootList.main_menu
end

function obj:update_state_in()
    
end

function obj:update_state_main()
    
end

function obj:update_state_out()
    
end
