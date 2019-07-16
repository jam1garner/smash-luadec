local unk0 = UiScriptPlayer.require("common/ui_common")
layout_view = nil
exit_code = SCENE_EXIT_CODE_NONE
button_is_edited = nil
updated_button_id = nil
local unk1, unk2, unk3, unk4 = nil, nil, nil, nil
local unk5 = false

local unk6 = function() -- 0
    
end

local unk7 = function() -- 1
    
end

local unk8 = function() -- 2
    
end

...

function main() -- 17
    layout_view = layout_root.get_root_view()
    exit_code = SCENE_EXIT_CODE_NONE
    unk16(CONTROLLER_TYPE)
    unk1:clear_selection()
    unk3:select_button(BUTTON_ID_INIT)
    unk1:set_enable(false)
    unk3:clear_selection()
    unk3:set_focus(true)
    unk3:set_enable(false)
    ComFrameActor.set_back_enable(true)
    ComFrameActor.set_save_button(COMFRAME_FOOTERBUTTON_LARGE_100)
    ComFrameActor.set_footer_area(COMFRAME_FOOTERMESSAGEAREA_NONE)
    ComFrameActor.unselect()
    unk9(CONTROLLER_TYPE, BUTTON_ID_INIT)
    if CONTROLLER_TYPE == CONTROLLER_JOY_CON then
        if unk10(BUTTON_ID_INIT) then
            layout_view:play_animation("ctr_joy_chg_a", 1.0)
        else 
            layout_view:play_animation("ctr_joy_chg_b", 1.0)
        end
        if IS_BACK then
            layout_view:play_animation("r_in", 1.0)
        else
            layout_view:play_animation("in", 1.0)
        end
        unk0.fade_in(false)
        layout_root:set_enable_input(true)
        unk1:set_enable(true)
        repeat 
            local unk_17_0 = UiScriptPlayer.invoke("is_default_settings", CONTROLLER_TYPE)
            unk22(not unk_17_0)
            local unk_17_1
            button_is_edited = false
            updated_button_id = BUTTON_ID_NONE
            unk_17_0 = UiScriptPlayer.invoke("is_default_settings", CONTROLLER_TYPE)
            if (not unk1:is_enable() and not unk_17_0) or (unk1:is_enable() and unk_17_0) then
                unk22(not unk_17_0)
            end
            if unk3:get_decided_button_id() == BUTTON_ID_RESET then
                AppPopupManager.open_database_args(
                    "ID_POPUP_OPT_BTN_CTRL_INIT",
                    unk19(CONTROLLER_TYPE),
                    "s"
                )
                repeat
                    if not AppPopupManager.is_busy() then
                        if AppPopupManager.get_result() == POPUP_RESULT_YES then
                            unk15(CONTROLLER_TYPE)
                        end
                        break
                    end
                    coroutine.yield()
                until false
            end
            if updated_button_id == BUTTON_ID_OPTION then
                unk14(CONTROLLER_TYPE)
                unk1:set_focus(true)
                unk1:set_enable(true)
                ComFrameActor.set_save_button("COMFRAME_FOOTERBUTTON_LARGE_100")
                updated_button_id = BUTTON_ID_NONE
            elseif updated_button_id == BUTTON_ID_NONE then
                unk13(CONTROLLER_TYPE, updated_button_id, button_is_edited)
                layout_view:get_pane("cursor"):set_visible(true)
                unk1:set_enable(true)
                button_is_edited = false
                updated_button_id = BUTTON_ID_NONE
            end
            if unk1:is_cancelled() then
                ComFrameActor.press_cancel()
            end
            if ComFrameActor.is_cancelled() then
                exit_code = SCENE_EXIT_CODE_CANCEL
            elseif ComFrameActor.is_decided() then
                if unk18(CONTROLLER_TYPE) then
                    exit_code = SCENE_EXIT_CODE_NORMAL
                end
            else
                local unk_17_3 = unk1:get_selected_button_id()
                if unk_17_3 == unk_17_1 then
                    if CONTROLLER_TYPE == CONTROLLER_JOY_CON then
                        if unk10(unk_17_3) and not unk10(unk_17_1) then
                            layout_view:play_animation("ctr_joy_chg_a", 1.0)
                        elseif not unk10(unk_17_3) and unk10(unk_17_1) then
                            layout_view:play_animation("ctr_joy_chg_b", 1.0)
                        end
                    end
                    if unk_17_1 == BUTTON_ID_SAVE then
                        ComFrameActor.unselect()
                    end
                    unk_17_1 = unk_17_3
                    unk9(CONTROLLER_TYPE, unk_17_r1)
                    if unk_17_1 == BUTTON_ID_SAVE then
                        ComFrameActor.set_focus(true)
                        ComFrameActor.select()
                        UiSoundManager:play_se_label("se_system_cursor")
                    end
                end
                if unk_17_1 == BUTTON_ID_SAVE then
                    if ComFrameActor.is_selected() then
                        unk1:select_button(BUTTON_ID_SAVE)
                        unk9(CONTROLLER_TYPE, BUTTON_ID_SAVE)
                    end
                end
                decided_button_id = unk1:get_decided_button_id()
                if decided_button_id == BUTTON_ID_TEST then
                    if unk20(CONTROLLER_TYPE) then
                        UiSoundManager:play_se_label("se_system_fixed")
                        unk21()
                    end
                else
                    if decided_button_id == BUTTON_ID_NONE then
                        if decided_button_id == BUTTON_ID_OPTION then
                            unk1:set_focus(false)
                        end
                        unk1:set_enable(false)
                        layout_view:get_pane("cursor"):set_visible(false)
                        if decided_button_id == BUTTON_ID_OPTION then
                            ComFrameActor.set_button(COMFRAME_FOOTERBUTTON_NONE)
                            UiScriptPlayer.invoke("open_sub_window", CONTROLLER_TYPE, decided_button_id)
                        end
                    end 
                end
            end
            if exit_code == SCENE_EXIT_CODE_NONE then
                coroutine.yield()
            else
                break
            end
        until false
        layout_root:set_enable_input(false)
        if exit_code == SCENE_EXIT_CODE_CANCEL then
            unk0.play_animation_and_wait(layout_view, "r_out")
        else
            unk0.play_animation_and_wait(layout_view, "out")
        end
    end
end

function select_button_func(unk_18_0, unk_18_1, unk_18_2) -- 18
    local unk_18_3 = unk_18_0
    if CONTROLLER_TYPE == CONTROLLER_FULL_KEY then
        if unk_18_0 == BUTTON_ID_FK_BUTTON_X then
            if 0.0 < unk_18_2 then
                if 0.0 < unk_18_1 then
                    unk_18_3 = BUTTON_ID_FK_BUTTON_A
                elseif unk_18_1 < 0.0 then
                    unk_18_3 = BUTTON_ID_FK_BUTTON_Y
                elseif unk23 == BUTTON_ID_FK_BUTTON_A or unk23 == BUTTON_ID_FK_BUTTON_Y then
                    unk_18_3 = unk23
                else
                    unk_18_3 = BUTTON_ID_FK_BUTTON_Y
                end
            end
        else
            if unk_18_0 == BUTTON_ID_FK_BUTTON_Y or unk_18_0 == BUTTON_ID_FK_BUTTON_A then
                if 0.0 < unk_18_2 then
                    unk_18_3 = BUTTON_ID_FK_BUTTON_B
                elseif unk_18_2 < 0.0 then
                    unk_18_3 = BUTTON_ID_FK_BUTTON_X
                end
            elseif unk_18_0 == BUTTON_ID_FK_BUTTON_B then
                if unk_18_2 < 0.0 then
                    if unk_18_1 < 0.0 then
                        unk_18_3 = BUTTON_ID_FK_BUTTON_Y
                    elseif unk23 == BUTTON_ID_FK_BUTTON_A or unk23 == BUTTON_ID_FK_BUTTON_Y then
                        unk_18_3 = unk23
                    else
                        unk_18_3 = BUTTON_ID_FK_BUTTON_Y
                    end
                elseif unk_18_1 < 0.0 then
                    unk_18_3 = BUTTON_ID_FK_STICK_R
                end
            else
                if unk_18_0 == BUTTON_ID_FK_STICK_R then
                    if unk_18_2 < 0.0 then
                        unk_18_3 = BUTTON_ID_FK_BUTTON_Y
                    elseif 0.0 < unk_18_2 then
                        if unk23 then
                            unk_18_3 = BUTTON_ID_TEST
                        end
                    elseif 0.0 < unk_18_1 then
                        unk_18_3 = BUTTON_ID_FK_BUTTON_B
                    elseif unk_18_1 < 0.0 then
                        unk_18_3 = BUTTON_ID_FK_DOWN
                    end
                elseif unk_18_0 == BUTTON_ID_FK_DOWN then
                    if 0.0 < unk_18_1 then
                        unk_18_3 = BUTTON_ID_FK_STICK_R
                    end
                elseif unk_18_0 == BUTTON_ID_TEST and unk_18_2 < 0.0 then
                    unk_18_3 = BUTTON_ID_FK_STICK_R
                end
            end
        end
    else
        pass
    end
end
