class AttributeGroupsController < ApplicationController
  before_action :set_attribute_group, only: [:show, :edit, :update, :destroy]

  def new
    @attribute_group = AttributeGroup.new
    @attribute_group.game_id = params[:game_id]
  end

  def create
    @attribute_group = AttributeGroup.new(attribute_group_params)
    @attribute_group.game_id = params[:game_id]

    if @attribute_group.save
      redirect_to game_path(@attribute_group.game.gm_code), notice: "Group Created"
    else

    end
  end

  def show
  end

  def edit
  end

  def update
    @attribute_group.update_attributes(attribute_group_params)
    redirect_to :back, notice: "#{@attribute_group.name} was updated!"
  end

  def destroy
    @attribute_group.destroy
  end
  private

    def set_attribute_group
      @attribute_group = AttributeGroup.find(params[:id])
      @game = Game.where(gm_code: params[:game_id]).first
    end

    def attribute_group_params
      params.require(:attribute_group).permit( :sequence, :name, :description, :game_id)
    end
end