class GameAttributesController < ApplicationController
  before_action :set_game_attribute, only: [:show, :edit, :update, :destroy]

  def new
    @game_attribute = GameAttribute.new
  end

  def create
    @game_attribute = GameAttribute.new(game_params)
    if @game_attribute.save
      redirect_to @game_attribute, notice: "Your game has been created"
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @game_attribute.update(game_attribute_params)
      redirect_to @game_attribute, notice: "#{@game_attribute.name} has been updated!"
    else
      redirect_to @game_attribute, notice: "#{@game_attribute.name} cannot be updated!"
    end
  end

  def destroy
    @game_attribute.destroy
  end
  private

    def set_game_attribute
      @game_attribute = GameAttribute.find(params[:id])
      @game = Game.where(gm_code: params[:game_id]).first
    end

    def game_attribute_params
      params.require(:game_attribute).permit(:name, :description, :abbreviation, :min_number, :max_number, :type)
    end
end