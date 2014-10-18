class GameAttributesController < ApplicationController
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
    @game_attribute = GameAttribute.find(params[:id])
  end

  private
    def game_attribute_params
      params.require(:game_attribute).permit(:name, :description, :abbreviation, :min_number, :max_number, :type)
    end
end