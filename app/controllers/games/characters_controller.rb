class Games::CharactersController < ApplicationController
  before_filter :find_game

  def index
    @characters = @game.characters
  end

  def new
    @character = @game.characters.new
    @character.build_attribute_graph
  end

  def create
    @character = @game.characters.new(character_params)
    if @character.save
      redirect_to [:edit, @game, @character], notice: "Character was created"
    else
      render :new
    end
  end

  def edit
    @character = @game.characters.find(params[:id])
  end

  def update
    @character = @game.characters.find(params[:id])
    if @character.update_attributes(character_params)
      raise @character
      redirect_to [:edit, @game, @character], notice: "Character was updated"
    else
      render :edit
    end
  end

  private
    def find_game
      @game = Game.find(params[:game_id])
    end

    def character_params
      params.require(:character).permit([:name, :character_attributes_attributes => [{:value => []}, :game_attribute_id, :value, :id, :type]])
    end
end
