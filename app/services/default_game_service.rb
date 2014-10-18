class DefaultGameService

  def initialize(game_id)
    @game_id = game_id
  end

  def populate_defaults
    abilities_group = AttributeGroup.new(name: "Abilities", sequence: 0)
    skills_group = AttributeGroup.new(name: "Skills", sequence: 1)
    combat_group = AttributeGroup.new(name: "Combat", sequence: 2)
    character_description_group = AttributeGroup.new(name: "Character Description", sequence: 3)

    game.attribute_groups << abilities_group
    game.attribute_groups << skills_group
    game.attribute_groups << combat_group
    game.attribute_groups << character_description_group

    # Add primary attribute to group
  end

  private
    def game
      @game ||= Game.find(@game_id)
    end
end
