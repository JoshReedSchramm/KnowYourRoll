class DefaultGameService

  def initialize(game_id)
    @game_id = game_id
  end

  def populate_defaults
    
    #Add Attribute Groups to the newly created Game
    abilities_group = AttributeGroup.new(name: "Abilities", sequence: 0)
    skills_group = AttributeGroup.new(name: "Skills", sequence: 1)
    combat_group = AttributeGroup.new(name: "Combat", sequence: 2)
    character_description_group = AttributeGroup.new(name: "Character Description", sequence: 3)

    game.attribute_groups << abilities_group
    game.attribute_groups << skills_group
    game.attribute_groups << combat_group
    game.attribute_groups << character_description_group

    #Add Game Attributes to each Attribute Group belonging to the newly created Game
    # DescriptiveAttribute || MultiAttribute || NumericAttribute
    
    ###### Abilities Group ######
    at_str = MultiAttribute.new(name: "Strength", description: "This is how strong a character is", group_sequence: 1)
    abilities_group.game_attributes << at_str
    at_str_score = NumericAttribute.new(name: "Strength Score", description: "", min_number: 1, max_number: 20, sequence: 1)
    at_str.children << at_str_score
    at_str_modifier = NumericAttribute.new(name: "Strength Modifier", description: "", min_number: -5, max_number: 10, sequence: 2)
    at_str.children << at_str_modifier

    at_dex = MultiAttribute.new(name: "Dexterity", description: "This is how nimble and fleet-footed a character is", group_sequence: 2)
    abilities_group.game_attributes << at_dex
    at_dex_score = NumericAttribute.new(name: "Dexterity Score", description: "", min_number: 1, max_number: 20, sequence: 1)
    at_dex.children << at_dex_score
    at_dex_modifier = NumericAttribute.new(name: "Dexterity Modifier", description: "", min_number: -5, max_number: 10, sequence: 2)
    at_dex.children << at_dex_modifier

    at_con = MultiAttribute.new(name: "Constitution", description: "This is how healthy and vital a character is", group_sequence: 3)
    abilities_group.game_attributes << at_con
    at_con_score = NumericAttribute.new(name: "Constitution Score", description: "", min_number: 1, max_number: 20, sequence: 1)
    at_con.children << at_con_score
    at_con_modifier = NumericAttribute.new(name: "Constitution Modifier", description: "", min_number: -5, max_number: 10, sequence: 2)
    at_con.children << at_con_modifier

    at_int = MultiAttribute.new(name: "Intelligence", description: "This is how smart a character is", group_sequence: 4)
    abilities_group.game_attributes << at_int
    at_int_score = NumericAttribute.new(name: "Intelligence Score", description: "", min_number: 1, max_number: 20, sequence: 1)
    at_int.children << at_int_score
    at_int_modifier = NumericAttribute.new(name: "Intelligence Modifier", description: "", min_number: -5, max_number: 10, sequence: 2)
    at_int.children << at_int_modifier

    at_wis = MultiAttribute.new(name: "Wisdom", description: "This is how insightful and wise a character is", group_sequence: 5)
    abilities_group.game_attributes << at_wis
    at_wis_score = NumericAttribute.new(name: "Wisdom Score", description: "", min_number: 1, max_number: 20, sequence: 1)
    at_wis.children << at_wis_score
    at_wis_modifier = NumericAttribute.new(name: "Wisdom Modifier", description: "", min_number: -5, max_number: 10, sequence: 2)
    at_wis.children << at_wis_modifier

    at_cha = MultiAttribute.new(name: "Charisma", description: "This is how confident and eloquent a character is", group_sequence: 6)
    abilities_group.game_attributes << at_cha
    at_cha_score = NumericAttribute.new(name: "Charisma Score", description: "", min_number: 1, max_number: 20, sequence: 1)
    at_cha.children << at_cha_score
    at_cha_modifier = NumericAttribute.new(name: "Charisma Modifier", description: "", min_number: -5, max_number: 10, sequence: 2)
    at_cha.children << at_cha_modifier
    ###### Abilities Group ######

    ###### Skills Group ######
    at_inspiration = NumericAttribute.new(name: "Inspiration", description: "A character's current Inspiration count", min_number: 0, max_number: 99, group_sequence: 1)
    skills_group.game_attributes << at_inspiration

    at_proficiency_bonus = NumericAttribute.new(name: "Proficiency Bonus", description: "A character's current Proficiency Bonus", min_number: 2, max_number: 10, group_sequence: 2)
    skills_group.game_attributes << at_proficiency_bonus

    at_str_saving_throw = NumericAttribute.new(name: "Strength Saving Throw", description: "A character's saving throw bonus against strength based events", min_number: -10, max_number: 20, group_sequence: 3)
    skills_group.game_attributes << at_str_saving_throw

    at_dex_saving_throw = NumericAttribute.new(name: "Dexterity Saving Throw", description: "A character's saving throw bonus against dexterity based events", min_number: -10, max_number: 20, group_sequence: 4)
    skills_group.game_attributes << at_dex_saving_throw

    at_con_saving_throw = NumericAttribute.new(name: "Constitution Saving Throw", description: "A character's saving throw bonus against constitution based events", min_number: -10, max_number: 20, group_sequence: 5)
    skills_group.game_attributes << at_con_saving_throw

    at_int_saving_throw = NumericAttribute.new(name: "Intelligence Saving Throw", description: "A character's saving throw bonus against intelligence based events", min_number: -10, max_number: 20, group_sequence: 6)
    skills_group.game_attributes << at_int_saving_throw

    at_wis_saving_throw = NumericAttribute.new(name: "Wisdom Saving Throw", description: "A character's saving throw bonus against wisdom based events", min_number: -10, max_number: 20, group_sequence: 7)
    skills_group.game_attributes << at_wis_saving_throw

    at_cha_saving_throw = NumericAttribute.new(name: "Charisma Saving Throw", description: "A character's saving throw bonus against charisma based events", min_number: -10, max_number: 20, group_sequence: 8)
    skills_group.game_attributes << at_cha_saving_throw

    at_acrobatics = NumericAttribute.new(name: "Acrobatics", description: "A character's Acrobatic skill level", min_number: -10, max_number: 20, group_sequence: 9)
    skills_group.game_attributes << at_acrobatics

    at_animal_handling = NumericAttribute.new(name: "Animal Handling", description: "A character's Animal Handling skill level", min_number: -10, max_number: 20, group_sequence: 10)
    skills_group.game_attributes << at_animal_handling

    at_arcana = NumericAttribute.new(name: "Arcana", description: "A character's Arcana skill level", min_number: -10, max_number: 20, group_sequence: 11)
    skills_group.game_attributes << at_arcana

    at_athletics = NumericAttribute.new(name: "Athletics", description: "A character's Athletics skill level", min_number: -10, max_number: 20, group_sequence: 12)
    skills_group.game_attributes << at_athletics

    at_deception = NumericAttribute.new(name: "Deception", description: "A character's Deception skill level", min_number: -10, max_number: 20, group_sequence: 13)
    skills_group.game_attributes << at_deception

    at_history = NumericAttribute.new(name: "History", description: "A character's History skill level", min_number: -10, max_number: 20, group_sequence: 14)
    skills_group.game_attributes << at_history

    at_insight = NumericAttribute.new(name: "Insight", description: "A character's Insight skill level", min_number: -10, max_number: 20, group_sequence: 15)
    skills_group.game_attributes << at_insight

    at_intimidation = NumericAttribute.new(name: "Intimidation", description: "A character's Intimidation skill level", min_number: -10, max_number: 20, group_sequence: 16)
    skills_group.game_attributes << at_intimidation

    at_investigation = NumericAttribute.new(name: "Investigation", description: "A character's Investigation skill level", min_number: -10, max_number: 20, group_sequence: 17)
    skills_group.game_attributes << at_investigation

    at_medicine = NumericAttribute.new(name: "Medicine", description: "A character's Medicine skill level", min_number: -10, max_number: 20, group_sequence: 18)
    skills_group.game_attributes << at_medicine

    at_nature = NumericAttribute.new(name: "Nature", description: "A character's Nature skill level", min_number: -10, max_number: 20, group_sequence: 19)
    skills_group.game_attributes << at_nature

    at_perception = NumericAttribute.new(name: "Perception", description: "A character's Perception skill level", min_number: -10, max_number: 20, group_sequence: 20)
    skills_group.game_attributes << at_perception

    at_performance = NumericAttribute.new(name: "Performance", description: "A character's Performance skill level", min_number: -10, max_number: 20, group_sequence: 21)
    skills_group.game_attributes << at_performance

    at_persuasion = NumericAttribute.new(name: "Persuasion", description: "A character's Persuasion skill level", min_number: -10, max_number: 20, group_sequence: 22)
    skills_group.game_attributes << at_persuasion

    at_religion = NumericAttribute.new(name: "Religion", description: "A character's Religion skill level", min_number: -10, max_number: 20, group_sequence: 23)
    skills_group.game_attributes << at_religion

    at_slieght_of_hand = NumericAttribute.new(name: "Sleight of Hand", description: "A character's Sleight of Hand skill level", min_number: -10, max_number: 20, group_sequence: 24)
    skills_group.game_attributes << at_slieght_of_hand

    at_stealth = NumericAttribute.new(name: "Stealth", description: "A character's Stealth skill level", min_number: -10, max_number: 20, group_sequence: 25)
    skills_group.game_attributes << at_stealth

    at_survival = NumericAttribute.new(name: "Survival", description: "A character's Survival skill level", min_number: -10, max_number: 20, group_sequence: 26)
    skills_group.game_attributes << at_survival

    at_passive_perception = NumericAttribute.new(name: "Passive Perception", description: "A character's Passive Perception skill level", min_number: -10, max_number: 20, group_sequence: 27)
    skills_group.game_attributes << at_passive_perception

    at_languages = DescriptiveAttribute.new(name: "Known Languages", description: "The languages that a character can speak and understand", group_sequence: 28)
    skills_group.game_attributes << at_languages
    ###### Skills Group ######

    ###### Combat Group ######
    at_armor_class = NumericAttribute.new(name: "Armor Class", description: "This is how protected a character is against physical attacks", min_number: 0, max_number: 50, group_sequence: 1)
    combat_group.game_attributes << at_armor_class

    at_initiative = NumericAttribute.new(name: "Initiative", description: "This is how quick a character is to react during combat", min_number: 0, max_number: 50, group_sequence: 2)
    combat_group.game_attributes << at_initiative

    at_speed = NumericAttribute.new(name: "Speed", description: "This is how fast a character can move during a single movement", min_number: 0, max_number: 500, group_sequence: 3)
    combat_group.game_attributes << at_speed

    at_hit_points = MultiAttribute.new(name: "Hit Points", description: "This is a character's life force and amount of damage that the character can take being death", group_sequence: 4)
    combat_group.game_attributes << at_hit_points
    at_max_hit_points = NumericAttribute.new(name: "Maximum Hit Points", description: "The most hit points a character can have at any given time", min_number: 1, max_number: 10000, sequence: 1)
    at_hit_points.children << at_max_hit_points
    at_current_hit_points = NumericAttribute.new(name: "Current Hit Points", description: "The character's current hit points", min_number: -5000, max_number: 10000, sequence: 2)
    at_hit_points.children << at_current_hit_points
    at_temp_hit_points = NumericAttribute.new(name: "Temporary Hit Points", description: "The character's bonus temporary hit points", min_number: 0, max_number: 5000, sequence: 3)
    at_hit_points.children << at_temp_hit_points

    at_hit_dice = MultiAttribute.new(name: "Hit Dice", description: "The number of hit dice that a character has ", group_sequence: 5)
    combat_group.game_attributes << at_hit_dice
    at_hit_dice_value = NumericAttribute.new(name: "Hit Dice Value", description: "How powerful a character's hit dice could potentially heal for", min_number: 0, max_number: 20, sequence: 1)
    at_hit_dice.children << at_hit_dice_value
    at_hit_dice_count = NumericAttribute.new(name: "Hit Dice Count", description: "How many hit dice a character has at their use", min_number: 0, max_number: 1000, sequence: 2)
    at_hit_dice.children << at_hit_dice_count

    at_death_saves = MultiAttribute.new(name: "Death Saves", description: "A count of the successful and failed character death saving attempts", group_sequence: 6)
    combat_group.game_attributes << at_death_saves
    at_death_fails = NumericAttribute.new(name: "Failures", description: "Current count of failed death saving throws by a character", min_number: 0, max_number: 3, sequence: 1)
    at_death_saves.children << at_death_fails
    at_death_successes = NumericAttribute.new(name: "Successes", description: "Current count of successful death saving throws by a character", min_number: 0, max_number: 3, sequence: 2)
    at_death_saves.children << at_death_successes

    at_weapons = MultiAttribute.new(name: "Weapons", description: "A character's arsenal of weapondry", group_sequence: 7)
    combat_group.game_attributes << at_weapons
    at_primary_main_hand = DescriptiveAttribute.new(name: "Primary Main Hand Weapon", description: "Usually a character's main melee weapon", sequence: 1)
    at_weapons.children << at_primary_main_hand
    at_secondary_main_hand = DescriptiveAttribute.new(name: "Secondary Main Hand Weapon", description: "Usually a character's main ranged weapon", sequence: 2)
    at_weapons.children << at_secondary_main_hand
    at_primary_off_hand = DescriptiveAttribute.new(name: "Primary Off Hand Weapon", description: "Usually a character's secondary melee weapon", sequence: 3)
    at_weapons.children << at_primary_off_hand
    at_secondary_off_hand = DescriptiveAttribute.new(name: "Secondary Off Hand Weapon", description: "Usually a character's secondary ranged weapon", sequence: 4)
    at_weapons.children << at_secondary_off_hand

    at_equipment = MultiAttribute.new(name: "Equipment", description: "A character's armor and equipped items", group_sequence: 8)
    combat_group.game_attributes << at_equipment
    at_armor = DescriptiveAttribute.new(name: "Armor", description: "A character's equipped armor", sequence: 1)
    at_equipment.children << at_armor
    at_shield = DescriptiveAttribute.new(name: "Shield", description: "A character's equipped shield", sequence: 2)
    at_equipment.children << at_shield
    at_headpiece = DescriptiveAttribute.new(name: "Headpiece", description: "A character's equipped Headpiece", sequence: 3)
    at_equipment.children << at_headpiece
    at_gauntlets = DescriptiveAttribute.new(name: "Gauntlets", description: "A character's equipped Gauntlets", sequence: 4)
    at_equipment.children << at_gauntlets
    at_boots = DescriptiveAttribute.new(name: "Boots", description: "A character's equipped Boots", sequence: 5)
    at_equipment.children << at_boots
    at_necklace = DescriptiveAttribute.new(name: "Necklace", description: "A character's equipped Necklace", sequence: 6)
    at_equipment.children << at_necklace
    at_ring = DescriptiveAttribute.new(name: "Ring", description: "A character's equipped Ring", sequence: 7)
    at_equipment.children << at_ring
    ###### Combat Group ######

    ###### Character Description Group ######
    at_name = DescriptiveAttribute.new(name: "Name", description: "The character's full name", group_sequence: 1)
    character_description_group.game_attributes << at_name

    at_race = DescriptiveAttribute.new(name: "Race", description: "The character's race", group_sequence: 2)
    character_description_group.game_attributes << at_race

    at_class = DescriptiveAttribute.new(name: "Class", description: "The character's class", group_sequence: 3)
    character_description_group.game_attributes << at_class

    at_age = NumericAttribute.new(name: "Age", description: "The number of years that the character has been alive", min_number: 0, max_number: 3, group_sequence: 4)
    character_description_group.game_attributes << at_age
    
    at_height = NumericAttribute.new(name: "Height", description: "A measurement of how tall a character is while standing fully upright (in feet)", min_number: 30, max_number: 120, group_sequence: 5)
    character_description_group.game_attributes << at_height
    
    at_weight = NumericAttribute.new(name: "Weight", description: "A measurement of the weight of the character without equipment accounted for (in pounds)", min_number: 50, max_number: 800, group_sequence: 6)
    character_description_group.game_attributes << at_weight
    
    at_experience = MultiAttribute.new(name: "Level", description: "This is a character's level in the game", group_sequence: 7)
    character_description_group.game_attributes << at_experience
    at_level = NumericAttribute.new(name: "Current Level", description: "The character's current level in the game", min_number: 1, max_number: 20, sequence: 1)
    at_experience.children << at_level
    at_experience_points = NumericAttribute.new(name: "Current Experience Points", description: "The character's current experience points gained by adventuring in the game", min_number: 0, max_number: 100000, sequence: 2)
    at_experience.children << at_experience_points
    at_next_level_experience_points = NumericAttribute.new(name: "Experience Points to Next Level", description: "The total number of hit points required by a character to reach the next level", min_number: 900, max_number: 100000, sequence: 3)
    at_experience.children << at_next_level_experience_points

    at_alignment = DescriptiveAttribute.new(name: "Alignment", description: "The character's alignment and general life disposition", group_sequence: 8)
    character_description_group.game_attributes << at_alignment

    at_personality = DescriptiveAttribute.new(name: "Personality", description: "The character's personality traits", group_sequence: 9)
    character_description_group.game_attributes << at_personality

    at_ideals = DescriptiveAttribute.new(name: "Ideals", description: "The character's ideals", group_sequence: 10)
    character_description_group.game_attributes << at_ideals

    at_bonds = DescriptiveAttribute.new(name: "Bonds", description: "The character's bonds", group_sequence: 11)
    character_description_group.game_attributes << at_bonds

    at_flaws = DescriptiveAttribute.new(name: "Flaws", description: "The character's flaws", group_sequence: 12)
    character_description_group.game_attributes << at_flaws

    at_appearance = DescriptiveAttribute.new(name: "Appearance", description: "What the character looks like in appearance", group_sequence: 13)
    character_description_group.game_attributes << at_appearance

    at_backstory = DescriptiveAttribute.new(name: "Backstory", description: "The character's full backstory", group_sequence: 14)
    character_description_group.game_attributes << at_backstory

    at_organizations = DescriptiveAttribute.new(name: "Organizations", description: "The character's organizations and titles within those organizations", group_sequence: 15)
    character_description_group.game_attributes << at_organizations

    at_currency = MultiAttribute.new(name: "Currency", description: "This is a character's purse contents", group_sequence: 16)
    character_description_group.game_attributes << at_currency
    at_platinum = NumericAttribute.new(name: "Platinum Pieces", description: "The character's amount of platinum pieces", min_number: 0, max_number: 100000, sequence: 1)
    at_currency.children << at_platinum
    at_gold = NumericAttribute.new(name: "Gold Pieces", description: "The character's amount of gold pieces", min_number: 0, max_number: 500000, sequence: 1)
    at_currency.children << at_gold
    at_electrum = NumericAttribute.new(name: "Electrum Pieces", description: "The character's amount of electrum pieces", min_number: 0, max_number: 500000, sequence: 1)
    at_currency.children << at_electrum
    at_silver = NumericAttribute.new(name: "Silver Pieces", description: "The character's amount of silver pieces", min_number: 0, max_number: 500000, sequence: 1)
    at_currency.children << at_silver
    at_copper = NumericAttribute.new(name: "Copper Pieces", description: "The character's amount of copper pieces", min_number: 0, max_number: 500000, sequence: 1)
    at_currency.children << at_copper

    at_treasure = DescriptiveAttribute.new(name: "Treasure", description: "The character's list of miscellaneous treasure (not currency) and items of value", group_sequence: 17)
    character_description_group.game_attributes << at_treasure
    ###### Character Description Group ######

  end

  private
    def game
      @game ||= Game.find(@game_id)
    end
end
