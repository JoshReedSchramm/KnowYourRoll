class DefaultGameService

  def initialize(game_id)
    @game_id = game_id
  end

  def populate_defaults
    # Add attribute groups to game
    # Add primary attribute to group
  end

  private
    def game
      @game ||= Game.find(@game_id)
    end
end
