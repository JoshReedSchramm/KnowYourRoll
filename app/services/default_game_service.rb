class DefaultGameService

  def initialize(game_id)
    @game_id = game_id
  end

  def populate_defaults
    game.attribute_groups << AttributeGroup.new(name: "Abilities", sequence: 0)
    game.attribute_groups << AttributeGroup.new(name: "Skills", sequence: 1)
    game.attribute_groups << AttributeGroup.new(name: "Combat", sequence: 2)
    game.attribute_groups << AttributeGroup.new(name: "Character Description", sequence: 3)

    # Add attribute groups to game
    # Add primary attribute to group
  end

  private
    def game
      @game ||= Game.find(@game_id)
    end
end
