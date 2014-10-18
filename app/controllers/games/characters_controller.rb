class Games::CharactersController < ApplicationController
  before_filter :find_game

  def index
    @characters = @game.characters
  end

  def new
    @character = @game.characters.new
  end

  def create
    @character = @game.characters.new(character_params)
    if @character.save
      redirect_to [@game, @character]
    else
      render :new
    end
  end

  private
    def find_game
      @game = Game.find(params[:game_id])
    end

    def character_params
      params.require(:character).permit(:character_attributes_attributes => [:value, :game_attribute_id])
    end
end
