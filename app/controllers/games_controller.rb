class GamesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @game = current_user.games.new
    if current_user
      @game.creator = current_user
    else
      @game.build_creator
    end
  end

  def create
    @game = current_user.games.new(game_params)

    if current_user
      @game.creator = current_user
    end

    if @game.save
      sign_in(:user, @game.creator)
      DefaultGameService.new(@game.id).populate_defaults

      redirect_to game_path(@game), notice: "Your game has been created"
    else
      render :new
    end
  end

  def index
  end

  def show
    @game = current_user.games.find(params[:id])
    @attributes = GameAttribute.all
  end

  private
    def game_params
      params.require(:game).permit(:name, :description, :creator_attributes => [:name, :email])
    end
end
