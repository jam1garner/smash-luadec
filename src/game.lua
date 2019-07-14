function game_Attack()
    if sv_animcmd.is_excute() then
        sv_animcmd.ATTACK(0, 0, 0x31ED91FCA, 5.0, 0x37, 0x50, 0x0, 0x28, 3.5, 0.0, 0.0, 0.0,
                            nil, nil, nil, 1.0, 1.0, ATTACK_SETOFF_KIND_OFF, ATTACK_LR_CHECK_SPEED,
                            false, -2.5, 0, 0x2B, true, false, false, false, false,
                            COLLISION_SITUATION_MASK_G, COLLISION_CATEGORY_MASK_NO_STAGE,
                            COLLISION_PART_MASK_ALL, false, 0x15A2C502B3, ATTACK_SOUND_LEVEL_S,
                            COLLISION_SOUND_ATTR_KICK, ATTACK_REGION_OBJECT)
    end
end
