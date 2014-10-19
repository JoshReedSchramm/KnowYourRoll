class DefaultRulesEngineService

    def initialize(game_id)
        @game_id = game_id
    end

    def populate_defaults
        # game.game_attributes.count
    end

    private
        def game
            @game ||= Game.find(@game_id)
        end
end

    # Step 1 Attritubes to set rules of

    #at_str_score = game.game_attributes.find_by(name: "Strength Score")
    #at_str_mod = game.game_attributes.find_by(name: "Strength Modifier")
    #str_score_mod_rule = GameAttributeRule.new(name: "Strength Score Modifier Lookup", description: "Looks up the Strength Modifier value from the LookupValues based on Strength Score", type: "Lookup_Value")
    #game.game_attribute_rules << str_score_mod_rule
    #at_str_score.game_attribute_rules << str_score_mod_rule
    #str_score_mod_rule.game_attributes << at_str_mod

    #at_dex_score = game.game_attributes.find_by(name: "Dexterity Score")
    #at_dex_mod = game.game_attributes.find_by(name: "Dexterity Modifier")
    #at_con_score = game.game_attributes.find_by(name: "Constitution Score")
    #at_con_mod = game.game_attributes.find_by(name: "Constitution Modifier")
    #at_int_score = game.game_attributes.find_by(name: "Intelligence Score")
    #at_int_mod = game.game_attributes.find_by(name: "Intelligence Modifier")
    #at_wis_score = game.game_attributes.find_by(name: "Wisdom Score")
    #at_wis_mod = game.game_attributes.find_by(name: "Wisdom Modifier")
    #at_cha_score = game.game_attributes.find_by(name: "Charisma Score")
    #at_cha_mod = game.game_attributes.find_by(name: "Charisma Modifier")

    #lu_str_score_mod_01 = LookupValue.new(input_key: "1", output_value: "-5")
    #lu_str_score_mod_02 = LookupValue.new(input_key: "2", output_value: "-4")
    #lu_str_score_mod_03 = LookupValue.new(input_key: "3", output_value: "-4")
    #lu_str_score_mod_04 = LookupValue.new(input_key: "4", output_value: "-3")
    #lu_str_score_mod_05 = LookupValue.new(input_key: "5", output_value: "-3")
    #lu_str_score_mod_06 = LookupValue.new(input_key: "6", output_value: "-2")
    #lu_str_score_mod_07 = LookupValue.new(input_key: "7", output_value: "-2")
    #lu_str_score_mod_08 = LookupValue.new(input_key: "8", output_value: "-1")
    #lu_str_score_mod_09 = LookupValue.new(input_key: "9", output_value: "-1")
    #lu_str_score_mod_10 = LookupValue.new(input_key: "10", output_value: "0")
    #lu_str_score_mod_11 = LookupValue.new(input_key: "11", output_value: "0")
    #lu_str_score_mod_12 = LookupValue.new(input_key: "12", output_value: "1")
    #lu_str_score_mod_13 = LookupValue.new(input_key: "13", output_value: "1")
    #lu_str_score_mod_14 = LookupValue.new(input_key: "14", output_value: "2")
    #lu_str_score_mod_15 = LookupValue.new(input_key: "15", output_value: "2")
    #lu_str_score_mod_16 = LookupValue.new(input_key: "16", output_value: "3")
    #lu_str_score_mod_17 = LookupValue.new(input_key: "17", output_value: "3")
    #lu_str_score_mod_18 = LookupValue.new(input_key: "18", output_value: "4")
    #lu_str_score_mod_19 = LookupValue.new(input_key: "19", output_value: "4")
    #lu_str_score_mod_20 = LookupValue.new(input_key: "20", output_value: "5")
    #lu_str_score_mod_21 = LookupValue.new(input_key: "21", output_value: "5")
    #lu_str_score_mod_22 = LookupValue.new(input_key: "22", output_value: "6")
    #lu_str_score_mod_23 = LookupValue.new(input_key: "23", output_value: "6")
    #lu_str_score_mod_24 = LookupValue.new(input_key: "24", output_value: "7")
    #lu_str_score_mod_25 = LookupValue.new(input_key: "25", output_value: "7")
    #lu_str_score_mod_26 = LookupValue.new(input_key: "26", output_value: "8")
    #lu_str_score_mod_27 = LookupValue.new(input_key: "27", output_value: "8")
    #lu_str_score_mod_28 = LookupValue.new(input_key: "28", output_value: "9")
    #lu_str_score_mod_29 = LookupValue.new(input_key: "29", output_value: "9")
    #lu_str_score_mod_30 = LookupValue.new(input_key: "30", output_value: "10")

    #str_score_mod_rule.lookup_values << lu_str_score_mod_01
    #str_score_mod_rule.lookup_values << lu_str_score_mod_02
    #str_score_mod_rule.lookup_values << lu_str_score_mod_03
    #str_score_mod_rule.lookup_values << lu_str_score_mod_04
    #str_score_mod_rule.lookup_values << lu_str_score_mod_05
    #str_score_mod_rule.lookup_values << lu_str_score_mod_06
    #str_score_mod_rule.lookup_values << lu_str_score_mod_07
    #str_score_mod_rule.lookup_values << lu_str_score_mod_08
    #str_score_mod_rule.lookup_values << lu_str_score_mod_09
    #str_score_mod_rule.lookup_values << lu_str_score_mod_10
    #str_score_mod_rule.lookup_values << lu_str_score_mod_11
    #str_score_mod_rule.lookup_values << lu_str_score_mod_12
    #str_score_mod_rule.lookup_values << lu_str_score_mod_13
    #str_score_mod_rule.lookup_values << lu_str_score_mod_14
    #str_score_mod_rule.lookup_values << lu_str_score_mod_15
    #str_score_mod_rule.lookup_values << lu_str_score_mod_16
    #str_score_mod_rule.lookup_values << lu_str_score_mod_17
    #str_score_mod_rule.lookup_values << lu_str_score_mod_18
    #str_score_mod_rule.lookup_values << lu_str_score_mod_19
    #str_score_mod_rule.lookup_values << lu_str_score_mod_20
    #str_score_mod_rule.lookup_values << lu_str_score_mod_21
    #str_score_mod_rule.lookup_values << lu_str_score_mod_22
    #str_score_mod_rule.lookup_values << lu_str_score_mod_23
    #str_score_mod_rule.lookup_values << lu_str_score_mod_24
    #str_score_mod_rule.lookup_values << lu_str_score_mod_25
    #str_score_mod_rule.lookup_values << lu_str_score_mod_26
    #str_score_mod_rule.lookup_values << lu_str_score_mod_27
    #str_score_mod_rule.lookup_values << lu_str_score_mod_28
    #str_score_mod_rule.lookup_values << lu_str_score_mod_29
    #str_score_mod_rule.lookup_values << lu_str_score_mod_30

    #dex_score_mod_rule = GameAttributeRule.new(name: "Dexterity Score Modifier Lookup", description: "Looks up the Dexterity Modifier value from the LookupValues based on Dexterity Score", type: "Lookup_Value")
    #con_score_mod_rule = GameAttributeRule.new(name: "Constitution Score Modifier Lookup", description: "Looks up the Constitution Modifier value from the LookupValues based on Constitution Score", type: "Lookup_Value")
    #int_score_mod_rule = GameAttributeRule.new(name: "Intelligence Score Modifier Lookup", description: "Looks up the Intelligence Modifier value from the LookupValues based on Intelligence Score", type: "Lookup_Value")
    #wis_score_mod_rule = GameAttributeRule.new(name: "Wisdom Score Modifier Lookup", description: "Looks up the Wisdom Modifier value from the LookupValues based on Wisdom Score", type: "Lookup_Value")
    #cha_score_mod_rule = GameAttributeRule.new(name: "Charisma Score Modifier Lookup", description: "Looks up the Charisma Modifier value from the LookupValues based on Charisma Score", type: "Lookup_Value")

    #game.game_attribute_rules << dex_score_mod_rule
    #game.game_attribute_rules << con_score_mod_rule
    #game.game_attribute_rules << int_score_mod_rule
    #game.game_attribute_rules << wis_score_mod_rule
    #game.game_attribute_rules << cha_score_mod_rule

    # Step 2 Attributes to set rules of
    #at_race = game.game_attributes.find_by(name: "Race")
    #at_human = game.game_attributes.find_by(name: "Human")
    #at_elf = game.game_attributes.find_by(name: "Elf")
    #at_wood_elf = game.game_attributes.find_by(name: "Wood Elf")
    #at_high_elf = game.game_attributes.find_by(name: "High Elf")
    #at_dark_elf = game.game_attributes.find_by(name: "Dark Elf")
    #at_dwarf = game.game_attributes.find_by(name: "Dwarf")
    #at_hill_dwarf = game.game_attributes.find_by(name: "Hill Dwarf")
    #at_mountain_dwarf = game.game_attributes.find_by(name: "Mountain Dwarf")
    #at_class = game.game_attributes.find_by(name: "Class")
    #at_fighter = game.game_attributes.find_by(name: "Fighter")
    #at_rogue = game.game_attributes.find_by(name: "Rogue")
    #at_ranger = game.game_attributes.find_by(name: "Ranger")
    #at_wizard = game.game_attributes.find_by(name: "Wizard")
    #at_cleric = game.game_attributes.find_by(name: "Cleric")
    #at_age = game.game_attributes.find_by(name: "Age")
    #at_height = game.game_attributes.find_by(name: "Height")
    #at_weight = game.game_attributes.find_by(name: "Weight")
    #at_level = game.game_attributes.find_by(name: "Current Level")
    #at_experience_points = game.game_attributes.find_by(name: "Current Experience Points")
    #at_next_level_experience_points = game.game_attributes.find_by(name: "Experience Points to Next Level")

    # Step 3 Attributes to set rules of
    #at_inspiration = game.game_attributes.find_by(name: "Inspiration")
    #at_proficiency_bonus = game.game_attributes.find_by(name: "Proficiency Bonus")
    #at_str_saving_throw = game.game_attributes.find_by(name: "Strength Saving Throw")
    #at_dex_saving_throw = game.game_attributes.find_by(name: "Dexterity Saving Throw")
    #at_con_saving_throw = game.game_attributes.find_by(name: "Constitution Saving Throw")
    #at_int_saving_throw = game.game_attributes.find_by(name: "Intelligence Saving Throw")
    #at_wis_saving_throw = game.game_attributes.find_by(name: "Wisdom Saving Throw")
    #at_cha_saving_throw = game.game_attributes.find_by(name: "Charisma Saving Throw")
    #at_acrobatics = game.game_attributes.find_by(name: "Acrobatics")
    #at_animal_handling = game.game_attributes.find_by(name: "Animal Handling")
    #at_arcana = game.game_attributes.find_by(name: "Arcana")
    #at_athletics = game.game_attributes.find_by(name: "Athletics")
    #at_deception = game.game_attributes.find_by(name: "Deception")
    #at_history = game.game_attributes.find_by(name: "History")
    #at_insight = game.game_attributes.find_by(name: "Insight")
    #at_intimidation = game.game_attributes.find_by(name: "Intimidation")
    #at_investigation = game.game_attributes.find_by(name: "Investigation")
    #at_medicine = game.game_attributes.find_by(name: "Medicine")
    #at_nature = game.game_attributes.find_by(name: "Nature")
    #at_perception = game.game_attributes.find_by(name: "Perception")
    #at_performance = game.game_attributes.find_by(name: "Performance")
    #at_persuasion = game.game_attributes.find_by(name: "Persuasion")
    #at_religion = game.game_attributes.find_by(name: "Religion")
    #at_slieght_of_hand = game.game_attributes.find_by(name: "Sleight of Hand")
    #at_stealth = game.game_attributes.find_by(name: "Stealth")
    #at_survival = game.game_attributes.find_by(name: "Survival")
    #at_passive_perception = game.game_attributes.find_by(name: "Passive Perception")
    #at_languages = game.game_attributes.find_by(name: "Languages")
    #at_common = game.game_attributes.find_by(name: "Common")
    #at_dwarvish = game.game_attributes.find_by(name: "Dwarvish")
    #at_elvish = game.game_attributes.find_by(name: "Elvish")
    #at_giantish = game.game_attributes.find_by(name: "Giantish")
    #at_gnomish = game.game_attributes.find_by(name: "Gnomish")
    #at_goblin = game.game_attributes.find_by(name: "Goblin")
    #at_halfling = game.game_attributes.find_by(name: "Halfling")
    #at_orcish = game.game_attributes.find_by(name: "Orcish")
    
    # Step 4 Attributes to set rules of
    #at_armor_class = game.game_attributes.find_by(name: "Armor Class")
    #at_initiative = game.game_attributes.find_by(name: "Initiative")
    #at_speed = game.game_attributes.find_by(name: "Speed")
    #at_max_hit_points = game.game_attributes.find_by(name: "Maximum Hit Points")
    #at_hit_dice_value = game.game_attributes.find_by(name: "Hit Dice Value")
    #at_hit_dice_count = game.game_attributes.find_by(name: "Hit Dice Count")
    #at_spell_dc = game.game_attributes.find_by(name: "Spell Save DC")
    #at_spell_attack = game.game_attributes.find_by(name: "Spell Attack Bonus")
