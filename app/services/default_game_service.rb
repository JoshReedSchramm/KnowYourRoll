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
    at_str_score = NumericAttribute.new(name: "Strength Score", min_number: 1, max_number: 20, sequence: 1)
    at_str.children << at_str_score
    at_str_modifier = NumericAttribute.new(name: "Strength Modifier", min_number: -5, max_number: 10, sequence: 2)
    at_str.children << at_str_modifier

    at_dex = MultiAttribute.new(name: "Dexterity", description: "This is how nimble and fleet-footed a character is", group_sequence: 2)
    abilities_group.game_attributes << at_dex
    at_dex_score = NumericAttribute.new(name: "Dexterity Score", min_number: 1, max_number: 20, sequence: 1)
    at_dex.children << at_dex_score
    at_dex_modifier = NumericAttribute.new(name: "Dexterity Modifier", min_number: -5, max_number: 10, sequence: 2)
    at_dex.children << at_dex_modifier

    at_con = MultiAttribute.new(name: "Constitution", description: "This is how healthy and vital a character is", group_sequence: 3)
    abilities_group.game_attributes << at_con
    at_con_score = NumericAttribute.new(name: "Constitution Score", min_number: 1, max_number: 20, sequence: 1)
    at_con.children << at_con_score
    at_con_modifier = NumericAttribute.new(name: "Constitution Modifier", min_number: -5, max_number: 10, sequence: 2)
    at_con.children << at_con_modifier

    at_int = MultiAttribute.new(name: "Intelligence", description: "This is how smart a character is", group_sequence: 4)
    abilities_group.game_attributes << at_int
    at_int_score = NumericAttribute.new(name: "Intelligence Score", min_number: 1, max_number: 20, sequence: 1)
    at_int.children << at_int_score
    at_int_modifier = NumericAttribute.new(name: "Intelligence Modifier", min_number: -5, max_number: 10, sequence: 2)
    at_int.children << at_int_modifier

    at_wis = MultiAttribute.new(name: "Wisdom", description: "This is how insightful and wise a character is", group_sequence: 5)
    abilities_group.game_attributes << at_wis
    at_wis_score = NumericAttribute.new(name: "Wisdom Score", min_number: 1, max_number: 20, sequence: 1)
    at_wis.children << at_wis_score
    at_wis_modifier = NumericAttribute.new(name: "Wisdom Modifier", min_number: -5, max_number: 10, sequence: 2)
    at_wis.children << at_wis_modifier

    at_cha = MultiAttribute.new(name: "Charisma", description: "This is how confident and eloquent a character is", group_sequence: 6)
    abilities_group.game_attributes << at_cha
    at_cha_score = NumericAttribute.new(name: "Charisma Score", min_number: 1, max_number: 20, sequence: 1)
    at_cha.children << at_cha_score
    at_cha_modifier = NumericAttribute.new(name: "Charisma Modifier", min_number: -5, max_number: 10, sequence: 2)
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

    at_languages = MultiAttribute.new(name: "Languages", description: "The languages that a character can speak and understand", group_sequence: 28, allows_multiple_values: true, container: false)
    skills_group.game_attributes << at_languages
    at_common = DescriptiveAttribute.new(name: "Common", sequence: 1)
    at_languages.children << at_common
    at_dwarvish = DescriptiveAttribute.new(name: "Dwarvish", sequence: 2)
    at_languages.children << at_dwarvish
    at_elvish = DescriptiveAttribute.new(name: "Elvish", sequence: 3)
    at_languages.children << at_elvish
    at_giantish = DescriptiveAttribute.new(name: "Giantish", sequence: 4)
    at_languages.children << at_giantish
    at_gnomish = DescriptiveAttribute.new(name: "Gnomish", sequence: 5)
    at_languages.children << at_gnomish
    at_goblin = DescriptiveAttribute.new(name: "Goblin", sequence: 6)
    at_languages.children << at_goblin
    at_halfling = DescriptiveAttribute.new(name: "Halfling", sequence: 7)
    at_languages.children << at_halfling
    at_orcish = DescriptiveAttribute.new(name: "Orcish", sequence: 8)
    at_languages.children << at_orcish
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

    # at_weapons = MultiAttribute.new(name: "Weapons", description: "A character's arsenal of weapondry", group_sequence: 7, allows_multiple_values: true)
    # combat_group.game_attributes << at_weapons
    #
    # at_melee = MultiAttribute.new(name: "Melee Weapon", description: "A character's current melee weapon", sequence: 1)
    # at_weapons.children << at_melee
    # at_melee_attack_bonus = DescriptiveAttribute.new(name: "Melee Weapon Attack Bonus", sequence: 1)
    # at_melee.children << at_melee_attack_bonus
    # at_simple_melee_weapons = MultiAttribute.new(name: "Simple Melee Weapons", description: "Available simple melee weapons for a character", sequence: 2)
    # at_melee.children << at_simple_melee_weapons
    #
    # at_club = MultiAttribute.new(name: "Club", sequence: 1)
    # at_simple_melee_weapons.children << at_club
    # at_club_damage = NumericAttribute.new(name: "Club Damage", description: "Amount of damage the club weapon can deal", min_number: 1, max_number: 4, sequence: 1)
    # at_club.children << at_club_damage
    # at_club_damage_type = DescriptiveAttribute.new(name: "Club Damage Type", description: "Type of damage the club weapon will deal", sequence: 2)
    # at_club.children << at_club_damage_type
    # at_club_properties = DescriptiveAttribute.new(name: "Club Properties", description: "The various special properties of the club weapon", sequence: 3)
    # at_club.children << at_club_properties
    #
    # at_dagger = MultiAttribute.new(name: "Dagger", sequence: 2)
    # at_simple_melee_weapons.children << at_dagger
    # at_dagger_damage = NumericAttribute.new(name: "Dagger Damage", description: "Amount of damage the dagger weapon can deal", min_number: 1, max_number: 4, sequence: 1)
    # at_dagger.children << at_dagger_damage
    # at_dagger_damage_type = DescriptiveAttribute.new(name: "Dagger Damage Type", description: "Type of damage the dagger weapon will deal", sequence: 2)
    # at_dagger.children << at_dagger_damage_type
    # at_dagger_properties = DescriptiveAttribute.new(name: "Dagger Properties", description: "The various special properties of the dagger weapon", sequence: 3)
    # at_dagger.children << at_dagger_properties
    #
    # at_mace = MultiAttribute.new(name: "Mace", sequence: 3)
    # at_simple_melee_weapons.children << at_mace
    # at_mace_damage = NumericAttribute.new(name: "Mace Damage", description: "Amount of damage the mace weapon can deal", min_number: 1, max_number: 6, sequence: 1)
    # at_mace.children << at_mace_damage
    # at_mace_damage_type = DescriptiveAttribute.new(name: "Mace Damage Type", description: "Type of damage the mace weapon will deal", sequence: 2)
    # at_mace.children << at_mace_damage_type
    # at_mace_properties = DescriptiveAttribute.new(name: "Mace Properties", description: "The various special properties of the mace weapon", sequence: 3)
    # at_mace.children << at_mace_properties
    #
    # at_quarterstaff = MultiAttribute.new(name: "Quarterstaff", sequence: 4)
    # at_simple_melee_weapons.children << at_quarterstaff
    # at_quarterstaff_damage = NumericAttribute.new(name: "Quarterstaff Damage", description: "Amount of damage the quarterstaff weapon can deal", min_number: 1, max_number: 6, sequence: 1)
    # at_quarterstaff.children << at_quarterstaff_damage
    # at_quarterstaff_damage_type = DescriptiveAttribute.new(name: "Quarterstaff Damage Type", description: "Type of damage the quarterstaff weapon will deal", sequence: 2)
    # at_quarterstaff.children << at_quarterstaff_damage_type
    # at_quarterstaff_properties = DescriptiveAttribute.new(name: "Quarterstaff Properties", description: "The various special properties of the quarterstaff weapon", sequence: 3)
    # at_quarterstaff.children << at_quarterstaff_properties
    #
    # at_unarmed = MultiAttribute.new(name: "Unarmed", sequence: 5)
    # at_simple_melee_weapons.children << at_unarmed
    # at_unarmed_damage = NumericAttribute.new(name: "Unarmed Damage", description: "Amount of damage the unarmed weapon can deal", min_number: 1, max_number: 1, sequence: 1)
    # at_unarmed.children << at_unarmed_damage
    # at_unarmed_damage_type = DescriptiveAttribute.new(name: "Unarmed Damage Type", description: "Type of damage the unarmed weapon will deal", sequence: 2)
    # at_unarmed.children << at_unarmed_damage_type
    # at_unarmed_properties = DescriptiveAttribute.new(name: "Unarmed Properties", description: "The various special properties of the unarmed weapon", sequence: 3)
    # at_unarmed.children << at_unarmed_properties
    #
    # at_martial_melee_weapons = MultiAttribute.new(name: "Martial Melee Weapons", description: "Available martial melee weapons for a character", sequence: 2)
    # at_melee.children << at_martial_melee_weapons
    #
    # at_greataxe = MultiAttribute.new(name: "Greataxe", sequence: 1)
    # at_martial_melee_weapons.children << at_greataxe
    # at_greataxe_damage = NumericAttribute.new(name: "Greataxe Damage", description: "Amount of damage the greataxe weapon can deal", min_number: 1, max_number: 12, sequence: 1)
    # at_greataxe.children << at_greataxe_damage
    # at_greataxe_damage_type = DescriptiveAttribute.new(name: "Greataxe Damage Type", description: "Type of damage the greataxe weapon will deal", sequence: 2)
    # at_greataxe.children << at_greataxe_damage_type
    # at_greataxe_properties = DescriptiveAttribute.new(name: "Greataxe Properties", description: "The various special properties of the greataxe weapon", sequence: 3)
    # at_greataxe.children << at_greataxe_properties
    #
    # at_longsword = MultiAttribute.new(name: "Longsword", sequence: 2)
    # at_martial_melee_weapons.children << at_longsword
    # at_longsword_damage = NumericAttribute.new(name: "Longsword Damage", description: "Amount of damage the longsword weapon can deal", min_number: 1, max_number: 8, sequence: 1)
    # at_longsword.children << at_longsword_damage
    # at_longsword_damage_type = DescriptiveAttribute.new(name: "Longsword Damage Type", description: "Type of damage the longsword weapon will deal", sequence: 2)
    # at_longsword.children << at_longsword_damage_type
    # at_longsword_properties = DescriptiveAttribute.new(name: "Longsword Properties", description: "The various special properties of the longsword weapon", sequence: 3)
    # at_longsword.children << at_longsword_properties
    #
    # at_rapier = MultiAttribute.new(name: "Rapier", sequence: 3)
    # at_martial_melee_weapons.children << at_rapier
    # at_rapier_damage = NumericAttribute.new(name: "Rapier Damage", description: "Amount of damage the rapier weapon can deal", min_number: 1, max_number: 8, sequence: 1)
    # at_rapier.children << at_rapier_damage
    # at_rapier_damage_type = DescriptiveAttribute.new(name: "Rapier Damage Type", description: "Type of damage the rapier weapon will deal", sequence: 2)
    # at_rapier.children << at_rapier_damage_type
    # at_rapier_properties = DescriptiveAttribute.new(name: "Rapier Properties", description: "The various special properties of the rapier weapon", sequence: 3)
    # at_rapier.children << at_rapier_properties
    #
    # at_shortsword = MultiAttribute.new(name: "Shortsword", sequence: 4)
    # at_martial_melee_weapons.children << at_shortsword
    # at_shortsword_damage = NumericAttribute.new(name: "Shortsword Damage", description: "Amount of damage the shortsword weapon can deal", min_number: 1, max_number: 6, sequence: 1)
    # at_shortsword.children << at_shortsword_damage
    # at_shortsword_damage_type = DescriptiveAttribute.new(name: "Shortsword Damage Type", description: "Type of damage the shortsword weapon will deal", sequence: 2)
    # at_shortsword.children << at_shortsword_damage_type
    # at_shortsword_properties = DescriptiveAttribute.new(name: "Shortsword Properties", description: "The various special properties of the shortsword weapon", sequence: 3)
    # at_shortsword.children << at_shortsword_properties
    #
    # at_warhammer = MultiAttribute.new(name: "Warhammer", sequence: 5)
    # at_martial_melee_weapons.children << at_warhammer
    # at_warhammer_damage = NumericAttribute.new(name: "Warhammer Damage", description: "Amount of damage the warhammer weapon can deal", min_number: 1, max_number: 8, sequence: 1)
    # at_warhammer.children << at_warhammer_damage
    # at_warhammer_damage_type = DescriptiveAttribute.new(name: "Warhammer Damage Type", description: "Type of damage the warhammer weapon will deal", sequence: 2)
    # at_warhammer.children << at_warhammer_damage_type
    # at_warhammer_properties = DescriptiveAttribute.new(name: "Warhammer Properties", description: "The various special properties of the warhammer weapon", sequence: 3)
    # at_warhammer.children << at_warhammer_properties
    #
    # at_ranged = MultiAttribute.new(name: "Ranged Weapon", description: "A character's current ranged weapon", sequence: 2)
    # at_weapons.children << at_ranged
    # at_ranged_attack_bonus = DescriptiveAttribute.new(name: "Ranged Weapon Attack Bonus", sequence: 1)
    # at_ranged.children << at_ranged_attack_bonus
    # at_simple_ranged_weapons = MultiAttribute.new(name: "Simple Ranged Weapons", description: "Available simple ranged weapons for a character", sequence: 2)
    # at_ranged.children << at_simple_ranged_weapons
    #
    # at_light_crossbow = MultiAttribute.new(name: "Light Crossbow", sequence: 1)
    # at_simple_ranged_weapons.children << at_light_crossbow
    # at_light_crossbow_damage = NumericAttribute.new(name: "Light Crossbow Damage", description: "Amount of damage the light crossbow weapon can deal", min_number: 1, max_number: 8, sequence: 1)
    # at_light_crossbow.children << at_light_crossbow_damage
    # at_light_crossbow_damage_type = DescriptiveAttribute.new(name: "Light Crossbow Damage Type", description: "Type of damage the light crossbow weapon will deal", sequence: 2)
    # at_light_crossbow.children << at_light_crossbow_damage_type
    # at_light_crossbow_properties = DescriptiveAttribute.new(name: "Light Crossbow Properties", description: "The various special properties of the light crossbow weapon", sequence: 3)
    # at_light_crossbow.children << at_light_crossbow_properties
    #
    # at_shortbow = MultiAttribute.new(name: "Shortbow", sequence: 2)
    # at_simple_ranged_weapons.children << at_shortbow
    # at_shortbow_damage = NumericAttribute.new(name: "Shortbow Damage", description: "Amount of damage the shortbow weapon can deal", min_number: 1, max_number: 6, sequence: 1)
    # at_shortbow.children << at_shortbow_damage
    # at_shortbow_damage_type = DescriptiveAttribute.new(name: "Shortbow Damage Type", description: "Type of damage the shortbow weapon will deal", sequence: 2)
    # at_shortbow.children << at_shortbow_damage_type
    # at_shortbow_properties = DescriptiveAttribute.new(name: "Shortbow Properties", description: "The various special properties of the shortbow weapon", sequence: 3)
    # at_shortbow.children << at_shortbow_properties
    #
    # at_martial_ranged_weapons = MultiAttribute.new(name: "Martial Ranged Weapons", description: "Available martial ranged weapons for a character", sequence: 2)
    # at_ranged.children << at_martial_ranged_weapons
    #
    # at_heavy_crossbow = MultiAttribute.new(name: "Heavy Crossbow", sequence: 2)
    # at_martial_ranged_weapons.children << at_heavy_crossbow
    # at_heavy_crossbow_damage = NumericAttribute.new(name: "Heavy Crossbow Damage", description: "Amount of damage the heavy crossbow weapon can deal", min_number: 1, max_number: 10, sequence: 1)
    # at_heavy_crossbow.children << at_heavy_crossbow_damage
    # at_heavy_crossbow_damage_type = DescriptiveAttribute.new(name: "Heavy Crossbow Damage Type", description: "Type of damage the heavy crossbow weapon will deal", sequence: 2)
    # at_heavy_crossbow.children << at_heavy_crossbow_damage_type
    # at_heavy_crossbow_properties = DescriptiveAttribute.new(name: "Heavy Crossbow Properties", description: "The various special properties of the heavy crossbow weapon", sequence: 3)
    # at_heavy_crossbow.children << at_heavy_crossbow_properties
    #
    # at_longbow = MultiAttribute.new(name: "Longbow", sequence: 3)
    # at_martial_ranged_weapons.children << at_longbow
    # at_longbow_damage = NumericAttribute.new(name: "Longbow Damage", description: "Amount of damage the longbow weapon can deal", min_number: 1, max_number: 8, sequence: 1)
    # at_longbow.children << at_longbow_damage
    # at_longbow_damage_type = DescriptiveAttribute.new(name: "Longbow Damage Type", description: "Type of damage the longbow weapon will deal", sequence: 2)
    # at_longbow.children << at_longbow_damage_type
    # at_longbow_properties = DescriptiveAttribute.new(name: "Longbow Properties", description: "The various special properties of the longbow weapon", sequence: 3)
    # at_longbow.children << at_longbow_properties

    # at_equipment = MultiAttribute.new(name: "Equipment", description: "A character's armor and equipped items", group_sequence: 8, allows_multiple_values: true)
    # combat_group.game_attributes << at_equipment
    
    # at_armor = MultiAttribute.new(name: "Armor", description: "A character's equipped armor", sequence: 1)
    # at_equipment.children << at_armor
    
    # at_light_armor = MultiAttribute.new(name: "Light Armor", description: "Available light armors for a character", sequence: 1)
    # at_armor.children << at_light_armor

    # at_padded_armor = DescriptiveAttribute.new(name: "Padded Armor", sequence: 1)
    # at_light_armor.children << at_padded_armor
    # at_leather_armor = DescriptiveAttribute.new(name: "Leather Armor", sequence: 2)
    # at_light_armor.children << at_leather_armor
    # at_studded_armor = DescriptiveAttribute.new(name: "Studded Leather Armor", sequence: 3)
    # at_light_armor.children << at_studded_armor
    #
    # at_medium_armor = MultiAttribute.new(name: "Medium Armor", description: "Available medium armors for a character", sequence: 2)
    # at_armor.children << at_medium_armor
    #
    # at_hide_armor = DescriptiveAttribute.new(name: "Hide Armor", sequence: 1)
    # at_medium_armor.children << at_hide_armor
    # at_chain_shirt_armor = DescriptiveAttribute.new(name: "Chain Shirt Armor", sequence: 2)
    # at_medium_armor.children << at_chain_shirt_armor
    # at_scale_mail_armor = DescriptiveAttribute.new(name: "Scale Mail Armor", sequence: 3)
    # at_medium_armor.children << at_scale_mail_armor
    # at_breastplate_armor = DescriptiveAttribute.new(name: "Breastplate Armor", sequence: 4)
    # at_medium_armor.children << at_breastplate_armor
    # at_half_plate_armor = DescriptiveAttribute.new(name: "Half Plate Armor", sequence: 5)
    # at_medium_armor.children << at_half_plate_armor
    #
    # at_heavy_armor = MultiAttribute.new(name: "Heavy Armor", description: "Available heavy armors for a character", sequence: 3)
    # at_armor.children << at_heavy_armor
    #
    # at_ring_mail_armor = DescriptiveAttribute.new(name: "Ring Mail Armor", sequence: 1)
    # at_heavy_armor.children << at_ring_mail_armor
    # at_chain_mail_armor = DescriptiveAttribute.new(name: "Chain Mail Armor", sequence: 2)
    # at_heavy_armor.children << at_chain_mail_armor
    # at_splint_armor = DescriptiveAttribute.new(name: "Splint Armor", sequence: 3)
    # at_heavy_armor.children << at_splint_armor
    # at_plate_armor = DescriptiveAttribute.new(name: "Plate Armor", sequence: 4)
    # at_heavy_armor.children << at_plate_armor
    #
    # at_shield = MultiAttribute.new(name: "Shields", description: "Available shields for a character", sequence: 2)
    # at_equipment.children << at_shield
    #
    # at_light_shield = DescriptiveAttribute.new(name: "Light Shield", sequence: 1)
    # at_shield.children << at_light_shield
    # at_heavy_shield = DescriptiveAttribute.new(name: "Heavy Shield", sequence: 2)
    # at_shield.children << at_heavy_shield

    # at_spells = MultiAttribute.new(name: "Spells", description: "A character's spell attacks and defenses", group_sequence: 9, allows_multiple_values: true)
    # combat_group.game_attributes << at_spells
    # at_spell_dc = DescriptiveAttribute.new(name: "Spell Save DC", description: "A character's DC to save against their spells", sequence: 1)
    # at_spells.children << at_spell_dc
    # at_spell_attack = DescriptiveAttribute.new(name: "Spell Attack Bonus", description: "A character's spell attack bonus", sequence: 2)
    # at_spells.children << at_spell_attack
    # at_cantrips = NumericAttribute.new(name: "Cantrips", description: "A character's available number of readied cantrip spells", min_number: 0, max_number: 5, sequence: 3)
    # at_spells.children << at_cantrips
    # at_spell_slots = MultiAttribute.new(name: "Spell Slots", description: "A character's available spell slots", sequence: 4)
    # at_spells.children << at_spell_slots
    # at_1st_level_spell_slots = NumericAttribute.new(name: "1st Level Spell Slots", description: "A character's available 1st level spell slots", min_number: 0, max_number: 4, sequence: 1)
    # at_spell_slots.children << at_1st_level_spell_slots
    # at_2nd_level_spell_slots = NumericAttribute.new(name: "2nd Level Spell Slots", description: "A character's available 2nd level spell slots", min_number: 0, max_number: 3, sequence: 2)
    # at_spell_slots.children << at_2nd_level_spell_slots
    # at_3rd_level_spell_slots = NumericAttribute.new(name: "3rd Level Spell Slots", description: "A character's available 3rd level spell slots", min_number: 0, max_number: 3, sequence: 3)
    # at_spell_slots.children << at_3rd_level_spell_slots
    # at_4th_level_spell_slots = NumericAttribute.new(name: "4th Level Spell Slots", description: "A character's available 4th level spell slots", min_number: 0, max_number: 3, sequence: 4)
    # at_spell_slots.children << at_4th_level_spell_slots
    # at_5th_level_spell_slots = NumericAttribute.new(name: "5th Level Spell Slots", description: "A character's available 5th level spell slots", min_number: 0, max_number: 3, sequence: 5)
    # at_spell_slots.children << at_5th_level_spell_slots
    # at_6th_level_spell_slots = NumericAttribute.new(name: "6th Level Spell Slots", description: "A character's available 6th level spell slots", min_number: 0, max_number: 2, sequence: 6)
    # at_spell_slots.children << at_6th_level_spell_slots
    # at_7th_level_spell_slots = NumericAttribute.new(name: "7th Level Spell Slots", description: "A character's available 7th level spell slots", min_number: 0, max_number: 2, sequence: 7)
    # at_spell_slots.children << at_7th_level_spell_slots
    # at_8th_level_spell_slots = NumericAttribute.new(name: "8th Level Spell Slots", description: "A character's available 8th level spell slots", min_number: 0, max_number: 1, sequence: 8)
    # at_spell_slots.children << at_8th_level_spell_slots
    # at_9th_level_spell_slots = NumericAttribute.new(name: "9th Level Spell Slots", description: "A character's available 9th level spell slots", min_number: 0, max_number: 1, sequence: 9)
    # at_spell_slots.children << at_9th_level_spell_slots
    # at_10th_level_spell_slots = NumericAttribute.new(name: "10th Level Spell Slots", description: "A character's available 10th level spell slots", min_number: 0, max_number: 1, sequence: 10)
    # at_spell_slots.children << at_10th_level_spell_slots

    at_packs = MultiAttribute.new(name: "Equipment Packs", description: "Available equipment packs for a character", group_sequence: 10, allows_multiple_values: true, container: false)
    combat_group.game_attributes << at_packs
    at_burglars_pack = DescriptiveAttribute.new(name: "Burglar's Pack", sequence: 1)
    at_packs.children << at_burglars_pack
    at_diplomats_pack = DescriptiveAttribute.new(name: "Diplomat's Pack", sequence: 2)
    at_packs.children << at_diplomats_pack
    at_dungeoneers_pack = DescriptiveAttribute.new(name: "Dungeoneer's Pack", sequence: 3)
    at_packs.children << at_dungeoneers_pack
    at_entertaniers_pack = DescriptiveAttribute.new(name: "Entertainer's Pack", sequence: 4)
    at_packs.children << at_entertaniers_pack
    at_explorers_pack = DescriptiveAttribute.new(name: "Explorer's Pack", sequence: 5)
    at_packs.children << at_explorers_pack
    at_ritualists_pack = DescriptiveAttribute.new(name: "Ritualist's Pack", sequence: 6)
    at_packs.children << at_ritualists_pack
    at_scholars_pack = DescriptiveAttribute.new(name: "Scholar's Pack", sequence: 7)
    at_packs.children << at_scholars_pack

    at_misc_items = MultiAttribute.new(name: "Misc Items", description: "A character's miscellaneous items", group_sequence: 11, allows_multiple_values: true, container: false)
    combat_group.game_attributes << at_misc_items
    at_adventurers_kit = DescriptiveAttribute.new(name: "Adventurer's Kit", sequence: 0)
    at_misc_items.children << at_adventurers_kit
    at_arrows = NumericAttribute.new(name: "Arrows", description: "Number of arrows a character carries", min_number: 0, max_number: 500, sequence: 1)
    at_misc_items.children << at_arrows
    at_bolts = NumericAttribute.new(name: "Bolts", description: "Number of bolts a character carries", min_number: 0, max_number: 500, sequence: 2)
    at_misc_items.children << at_bolts
    at_candles = NumericAttribute.new(name: "Candles", description: "Number of candles a character carries", min_number: 0, max_number: 200, sequence: 3)
    at_misc_items.children << at_candles
    at_climbers_kit = DescriptiveAttribute.new(name: "Climber's Kit", sequence: 4)
    at_misc_items.children << at_climbers_kit
    at_crowbar = DescriptiveAttribute.new(name: "Crowbar", sequence: 5)
    at_misc_items.children << at_crowbar
    at_healers_kit = DescriptiveAttribute.new(name: "Healer's Kit", sequence: 6)
    at_misc_items.children << at_healers_kit
    at_holy_symbol = DescriptiveAttribute.new(name: "Holy Symbol", sequence: 7)
    at_misc_items.children << at_holy_symbol
    at_potions_of_healing = NumericAttribute.new(name: "Potions of Healing", description: "Number of Potions of Healing a character carries", min_number: 0, max_number: 100, sequence: 8)
    at_misc_items.children << at_potions_of_healing
    at_rations = NumericAttribute.new(name: "Rations", description: "Number of rations a character carries", min_number: 0, max_number: 50, sequence: 9)
    at_misc_items.children << at_rations
    at_rope = DescriptiveAttribute.new(name: "Rope", sequence: 10)
    at_misc_items.children << at_rope
    at_shovel = DescriptiveAttribute.new(name: "Shovel", sequence: 11)
    at_misc_items.children << at_shovel
    at_spellbook = DescriptiveAttribute.new(name: "Spellbook", sequence: 12)
    at_misc_items.children << at_spellbook
    at_torches = NumericAttribute.new(name: "Torches", description: "Number of torches a character carries", min_number: 0, max_number: 100, sequence: 13)
    at_misc_items.children << at_torches
    at_waterskin = DescriptiveAttribute.new(name: "Waterskin", sequence: 14)
    at_misc_items.children << at_waterskin
    ###### Combat Group ######

    ###### Character Description Group ######
    at_race = MultiAttribute.new(name: "Race", description: "The character's race", group_sequence: 2, container: false)
    character_description_group.game_attributes << at_race
    at_human = DescriptiveAttribute.new(name: "Human", sequence: 1)
    at_race.children << at_human
    at_elf = DescriptiveAttribute.new(name: "Elf", sequence: 2)
    at_race.children << at_elf
    # at_wood_elf = DescriptiveAttribute.new(name: "Wood Elf", sequence: 1)
    # at_elf.children << at_wood_elf
    # at_high_elf = DescriptiveAttribute.new(name: "High Elf", sequence: 2)
    # at_elf.children << at_high_elf
    # at_dark_elf = DescriptiveAttribute.new(name: "Dark Elf", sequence: 3)
    # at_elf.children << at_dark_elf
    at_dwarf = DescriptiveAttribute.new(name: "Dwarf", sequence: 3)
    at_race.children << at_dwarf
    # at_hill_dwarf = DescriptiveAttribute.new(name: "Hill Dwarf", sequence: 1)
    # at_dwarf.children << at_hill_dwarf
    # at_mountain_dwarf = DescriptiveAttribute.new(name: "Mountain Dwarf", sequence: 2)
    # at_dwarf.children << at_mountain_dwarf

    at_class = MultiAttribute.new(name: "Class", description: "The character's class", group_sequence: 3, container: false)
    character_description_group.game_attributes << at_class
    at_fighter = DescriptiveAttribute.new(name: "Fighter", sequence: 1)
    at_class.children << at_fighter
    at_rogue = DescriptiveAttribute.new(name: "Rogue", sequence: 2)
    at_class.children << at_rogue
    at_ranger = DescriptiveAttribute.new(name: "Ranger", sequence: 3)
    at_class.children << at_ranger
    at_wizard = DescriptiveAttribute.new(name: "Wizard", sequence: 4)
    at_class.children << at_wizard
    at_cleric = DescriptiveAttribute.new(name: "Cleric", sequence: 5)
    at_class.children << at_cleric

    at_age = NumericAttribute.new(name: "Age", description: "The number of years that the character has been alive", min_number: 1, max_number: 10000, group_sequence: 4)
    character_description_group.game_attributes << at_age
    
    at_height = NumericAttribute.new(name: "Height", description: "A measurement of how tall a character is while standing fully upright (in feet)", min_number: 30, max_number: 120, group_sequence: 5)
    character_description_group.game_attributes << at_height
    
    at_weight = NumericAttribute.new(name: "Weight", description: "A measurement of the weight of the character without equipment accounted for (in pounds)", min_number: 50, max_number: 800, group_sequence: 6)
    character_description_group.game_attributes << at_weight
    
    at_gender = MultiAttribute.new(name: "Gender", description: "This is a character's gender in the game", group_sequence: 7, container: false)
    character_description_group.game_attributes << at_gender
    at_male = DescriptiveAttribute.new(name: "Male", sequence: 1)
    at_gender.children << at_male
    at_female = DescriptiveAttribute.new(name: "Female", sequence: 2)
    at_gender.children << at_female

    at_vision = MultiAttribute.new(name: "Vision", description: "This is a character's vision type in the game", group_sequence: 8, container: false)
    character_description_group.game_attributes << at_vision
    at_normal = DescriptiveAttribute.new(name: "Normal", description: "A character can see in bright and dim light within a given range", sequence: 1)
    at_vision.children << at_normal
    at_darkvision = DescriptiveAttribute.new(name: "Darkvision", description: "A character can see in bright light, dim light, and darkness too", sequence: 2)
    at_vision.children << at_darkvision
    at_blindsight = DescriptiveAttribute.new(name: "Blindsight", description: "A character can sense it's surroundings without sight for a given range", sequence: 3)
    at_vision.children << at_blindsight
    at_truesight = DescriptiveAttribute.new(name: "Truesight", description: "A character can see in normal and magical darkness, invisible objects, illusions, into the Ethereal Plane, and through shapeshifters and magically altered beings within a given range", sequence: 4)
    at_vision.children << at_truesight

    at_experience = MultiAttribute.new(name: "Level", description: "This is a character's level in the game", group_sequence: 9)
    character_description_group.game_attributes << at_experience
    at_level = NumericAttribute.new(name: "Current Level", description: "The character's current level in the game", min_number: 1, max_number: 20, sequence: 1)
    at_experience.children << at_level
    at_experience_points = NumericAttribute.new(name: "Current Experience Points", description: "The character's current experience points gained by adventuring in the game", min_number: 0, max_number: 100000, sequence: 2)
    at_experience.children << at_experience_points
    at_next_level_experience_points = NumericAttribute.new(name: "Experience Points to Next Level", description: "The total number of hit points required by a character to reach the next level", min_number: 900, max_number: 100000, sequence: 3)
    at_experience.children << at_next_level_experience_points

    at_alignments = MultiAttribute.new(name: "Alignments", description: "Available alignments for a character which is the character's general life disposition", group_sequence: 8, container: false)
    character_description_group.game_attributes << at_alignments
    at_lawful_good = DescriptiveAttribute.new(name: "Lawful Good", sequence: 1)
    at_alignments.children << at_lawful_good
    at_neutral_good = DescriptiveAttribute.new(name: "Neutral Good", sequence: 2)
    at_alignments.children << at_neutral_good
    at_chaotic_good = DescriptiveAttribute.new(name: "Chaotic Good", sequence: 3)
    at_alignments.children << at_chaotic_good
    at_lawful_neutral = DescriptiveAttribute.new(name: "Lawful Neutral", sequence: 4)
    at_alignments.children << at_lawful_neutral
    at_true_neutral = DescriptiveAttribute.new(name: "True Neutral", sequence: 5)
    at_alignments.children << at_true_neutral
    at_chaotic_neutral = DescriptiveAttribute.new(name: "Chaotic Neutral", sequence: 6)
    at_alignments.children << at_chaotic_neutral

    at_personality = DescriptiveAttribute.new(name: "Personality", description: "The character's personality traits", group_sequence: 10, multi_line: true)
    character_description_group.game_attributes << at_personality

    at_ideals = DescriptiveAttribute.new(name: "Ideals", description: "The character's ideals", group_sequence: 11, multi_line: true)
    character_description_group.game_attributes << at_ideals

    at_bonds = DescriptiveAttribute.new(name: "Bonds", description: "The character's bonds", group_sequence: 12, multi_line: true)
    character_description_group.game_attributes << at_bonds

    at_flaws = DescriptiveAttribute.new(name: "Flaws", description: "The character's flaws", group_sequence: 13, multi_line: true)
    character_description_group.game_attributes << at_flaws

    at_appearance = DescriptiveAttribute.new(name: "Appearance", description: "What the character looks like in appearance", group_sequence: 14, multi_line: true)
    character_description_group.game_attributes << at_appearance

    at_backstory = DescriptiveAttribute.new(name: "Backstory", description: "The character's full backstory", group_sequence: 15, multi_line: true)
    character_description_group.game_attributes << at_backstory

    at_organizations = DescriptiveAttribute.new(name: "Organizations", description: "The character's organizations and titles within those organizations", group_sequence: 16, multi_line: true)
    character_description_group.game_attributes << at_organizations

    at_currency = MultiAttribute.new(name: "Currency", description: "This is a character's purse contents", group_sequence: 17)
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

    at_treasure = DescriptiveAttribute.new(name: "Treasure", description: "The character's list of miscellaneous treasure (not currency) and items of value", group_sequence: 18, multi_line: true)
    character_description_group.game_attributes << at_treasure
    ###### Character Description Group ######

  end

  private
    def game
      @game ||= Game.find(@game_id)
    end
end
