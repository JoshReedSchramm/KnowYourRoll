class LookupValuesController < ApplicationController
  
  def new
    @lookup_value = LookupValue.new()
  end

  def update
  end

  def create
    @lookup_value = LookupValue.new(lookup_value_params)
    if @lookup_value.save
      redirect_to lookup_value_path(@lookup_value), notice: "Your look up value has been created"
    else
      render :new
    end
  end

  def show
    @lookup_value = LookupValue.find(params[:id])
  end

  private
    def lookup_value_params
      params.require(:lookup_value).permit(:name, :input_key, :output_value)
    end
end