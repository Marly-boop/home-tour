class CategoriesController < ApplicationController
  def index
    @houses = Category.includes(:houses)
  end
end
