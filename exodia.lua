--- STEAMODDED HEADER
--- MOD_NAME: Exodia Jokers
--- MOD_ID: Exodia
--- MOD_AUTHOR: [Kurogami2134]
--- MOD_DESCRIPTION: Adds all Exodia pieces as jokers to the game.

----------------------------------------------
------------MOD CODE -------------------------
SMODS.Atlas {
    key = "Jokers-Exodia",
    path = "exodia.png",
    px = 162,
    py = 231
}

SMODS.Joker{
    key = "RLeg",
    loc_txt = {
        name = "Right Leg of the Forbidden One",
        text = {
            "A forbidden right leg sealed by magic. Whosoever",
            "breaks this seal will know infinite power."
        }
    },
    atlas = "Jokers-Exodia",
    pos = {x = 0, y = 0},
    rarity = 2,
    cost = 3,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = {
    },
}

SMODS.Joker{
    key = "LLeg",
    loc_txt = {
        name = "Left Leg of the Forbidden One",
        text = {
            "A forbidden left leg sealed by magic. Whosoever",
            "breaks this seal will know infinite power."
        }
    },
    atlas = "Jokers-Exodia",
    pos = {x = 2, y = 0},
    rarity = 2,
    cost = 3,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = {
    },
}

SMODS.Joker{
    key = "RArm",
    loc_txt = {
        name = "Right Arm of the Forbidden One",
        text = {
            "A forbidden right arm sealed by magic. Whosoever",
            "breaks this seal will know infinite power."
        }
    },
    atlas = "Jokers-Exodia",
    pos = {x = 1, y = 0},
    rarity = 2,
    cost = 3,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = {
    },
}

SMODS.Joker{
    key = "LArm",
    loc_txt = {
        name = "Left Arm of the Forbidden One",
        text = {
            "A forbidden left arm sealed by magic. Whosoever",
            "breaks this seal will know infinite power."
        }
    },
    atlas = "Jokers-Exodia",
    pos = {x = 3, y = 0},
    rarity = 2,
    cost = 3,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = {
    },
}

SMODS.Joker{
    key = "Exodia",
    loc_txt = {
        name = "Exodia the Forbidden One",
        text = {
            'If you have "Right Leg of the Forbidden One", "Left Leg of the',
            'Forbidden One", "Right Arm of the Forbidden One" and "Left Arm',
            'of the Forbidden One" in addition to this card in your hand, you',
            'win the Round.'
        }
    },
    atlas = "Jokers-Exodia",
    pos = {x = 4, y = 0},
    rarity = 3,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = {
    },
    calculate = function(self, card, context)
        if context.setting_blind then
            r_leg = false
            l_leg = false
            r_arm = false
            l_arm = false
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].ability.name == 'j_exod_RLeg' then
                    r_leg = true
                elseif G.jokers.cards[i].ability.name == 'j_exod_LLeg' then
                    l_leg = true
                elseif G.jokers.cards[i].ability.name == 'j_exod_RArm' then
                    r_arm = true
                elseif G.jokers.cards[i].ability.name == 'j_exod_LArm' then
                    l_arm = true
                end
                -- sendTraceMessage(string.format("%s", G.jokers.cards[i].ability.name), "MyTraceLogger")
            end
            if l_arm and r_arm and l_leg and r_leg then
                sendTraceMessage(string.format("%s", "Exodia WIN"), "MyTraceLogger")
                G.GAME.chips = 1/0
                G.hand_text_area.game_chips:juice_up()
            end
        end
    end,
    
}

----------------------------------------------
------------MOD CODE END----------------------