class HousesController < ApplicationController
  def index
    @houses = House.all
  end

  def show
    @house = House.find(params[:id])
  end

  def search_category
    @houses = House.where(category: params[:category])
  end

  private

  def house_params
    params.require(:house).permit(:title, :description, :pic, :category)
  end
end
