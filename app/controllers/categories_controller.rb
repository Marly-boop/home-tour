class CategoriesController < ApplicationController
  def index
    @houses = Category.all
  end
end
