class GamesController < ApplicationController
  def new
    @game = Game.new()
    @game.build_creator
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      DefaultGameService.new(@game.id).populate_defaults

      redirect_to game_path(@game.gm_code), notice: "Your game has been created"
    else
      render :new
    end
  end

  def show
    @game = Game.find_by(gm_code: params[:id])
    @attributes = GameAttribute.all
  end

  private
    def game_params
      params.require(:game).permit(:name, :description, :creator_attributes => [:name, :email])
    end
end
