class AttributeGroupsController < ApplicationController
  before_action :set_attribute_group, only: [:show, :edit, :update, :destroy]

  def new
    @attribute_group = AttributeGroup.new
    @attribute_group.game_id = params[:game_id]
    render :template => '/shared/attribute_modal', :layout => false
  end

  def create
    @attribute_group = AttributeGroup.new(attribute_group_params)
    @attribute_group.game_id = params[:game_id]

    if @attribute_group.save
      redirect_to game_path(@attribute_group.game), notice: "Group Created"
    else

    end
  end

  def show
  end

  def edit
    render :template => '/shared/attribute_modal', :layout => false
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
      @game = Game.find(params[:game_id])
    end

    def attribute_group_params
      params.require(:attribute_group).permit( :sequence, :name, :description, :game_id)
    end
end
