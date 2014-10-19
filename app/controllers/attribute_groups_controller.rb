class AttributeGroupsController < ApplicationController
  before_action :set_game
  before_action :set_attribute_group, only: [:edit, :update, :destroy]

  def new
    @attribute_group = @game.attribute_groups.new
    respond_to do |format|
      format.html 
      format.js 
    end
  end

  def create
    @attribute_group = @game.attribute_groups.new(attribute_group_params)

    if @attribute_group.save
      respond_to do |format|
        format.html { redirect_to @attribute_group.game, notice: "#{@attribute_group.name} was created!" }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js { render "errors" }
      end
    end
  end

  def edit
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @attribute_group.update_attributes(attribute_group_params)
      respond_to do |format|
        format.html { redirect_to @attribute_group.game, notice: "#{@attribute_group.name} was updated!" }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :edit }
        format.js { render "errors" }
      end
    end
  end

  def destroy
    @attribute_group.destroy
    respond_to do |format|
      format.html { redirect_to @attribute_group.game, notice: "#{@attribute_group.name} was deleted" }
      format.js 
    end
  end

  private
    def set_attribute_group
      @attribute_group = @game.attribute_groups.find(params[:id])
    end

    def attribute_group_params
      params.require(:attribute_group).permit( :sequence, :name, :description, :game_id)
    end

    def set_game
      @game = Game.find(params[:game_id])
    end
end
