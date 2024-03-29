class GameAttributesController < ApplicationController
  before_action :set_game_attribute, only: [:show, :edit, :update, :destroy]
  before_action :set_parent, only: [:new, :create, :edit, :update]

  def new
    @game_attribute = params[:type].constantize.new
    @game = Game.find(params[:game_id])
    @game_attribute.game_id = params[:game_id]
    @game_attribute.attribute_group_id = @parent unless params[:attribute_group].blank?
    @game_attribute.parent_id = @parent unless params[:game_attribute_id].blank?
    respond_to do |format|
      format.html
      format.js
    end
    rescue
      "not a valid type"
  end

  def create
    @game_attribute = GameAttribute.new(game_attribute_params)
    @game_attribute.game_id = params[:game_id]
    @game_attribute.attribute_group_id = @parent.id unless params[:attribute_group_id].blank?
    @game_attribute.parent_id = @parent.id unless params[:game_attribute_id].blank?
    if @game_attribute.save
      redirect_to @game_attribute.game
    else
      
    end
  end

  def show
  end

  def edit
    @game_attribute.attribute_group_id = @parent unless params[:attribute_group_id].blank?
    @game_attribute.parent_id = @parent unless params[:game_attribute_id].blank?
    respond_to do |format|
      format.html
      format.js
    end
  end

  def update
    if @game_attribute.update_attributes(game_attribute_params)
      respond_to do |format|
        format.html { render nothing: true }
        format.js
      end
    else
      respond_to do |format|
        format.html { redirect_to :back }
        format.js { render partial: "/shared/js_errors", locals: { errors: @game_attribute.errors } }
      end
    end
  end

  def destroy
    @game_attribute.destroy
    respond_to do |format|
      format.html { render nothing: true }
      format.js 
    end
  end
  private

    def set_game_attribute
      @game_attribute = GameAttribute.find(params[:id])
      @game = Game.find(params[:game_id])
    end

    def game_attribute_params
      params.require(:game_attribute).permit( :parent_id, :sequence, :group_sequence, :attribute_group_id, :name, :description, :abbreviation, :game_id, :min_number, :max_number, :type, :container)
    end

    def set_parent
      @parent = AttributeGroup.find(params[:attribute_group_id]) unless params[:attribute_group_id].blank?
      @parent = GameAttribute.find(params[:game_attribute_id]).becomes(GameAttribute) unless params[:game_attribute_id].blank?
    end
end
