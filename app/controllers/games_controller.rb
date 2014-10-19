class GamesController < ApplicationController
  before_filter :authenticate_user!, except: [:new, :create]

  def new
    @game = Game.new
    if current_user
      @game.creator = current_user
    else
      @game.build_creator
    end
  end

  def create
    @game = Game.new(game_params)

    if current_user
      @game.creator = current_user
    end

    if @game.save
<<<<<<< HEAD
      # Create Default Game Attributes
      DefaultGameService.new(@game.id).populate_defaults

      # After DefaultGameService creates game attributes; call the DefaultRulesEngineService to create the game attribute rules for them
      DefaultRulesEngineService.new(@game.id).populate_defaults

      redirect_to game_path(@game.gm_code), notice: "Your game has been created"
=======
      sign_in(:user, @game.creator)
      DefaultGameService.new(@game.id).populate_defaults

      redirect_to game_path(@game), notice: "Your game has been created"
>>>>>>> 8d493dcbc71508202561117229dc7830a563e9fa
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
