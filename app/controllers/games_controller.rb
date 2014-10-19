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

  def edit
    @game = current_user.games.find(params[:id])
    respond_to do |format|
      format.html 
      format.js 
    end
  end

  def update
    @game = current_user.games.find(params[:id])
    if @game.update_attributes(game_params)
      respond_to do |format|
        format.html { redirect_to @game, notice: "Updated Game" }
        format.js 
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.js { render "errors" }
      end
    end
  end

  private
    def game_params
      params.require(:game).permit(:name, :description, :creator_attributes => [:name, :email])
    end
end
