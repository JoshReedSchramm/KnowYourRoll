class GamesController < ApplicationController
  def new
    @game = Game.new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      DefaultGameService.new(@game.id).populate_defaults

      redirect_to @game, notice: "Your game has been created"
    else
      render :new
    end
  end

  def show
    @game = Game.find(params[:id])
  end

  private
    def game_params
      params.require(:game).permit(:name, :description)
    end
end
