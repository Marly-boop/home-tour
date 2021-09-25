class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  private

  def house_params
    params.require(:house).permit(:title, :description, :pic)
  end
end