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

  end

  private
    def game
      @game ||= Game.find(@game_id)
    end
end
