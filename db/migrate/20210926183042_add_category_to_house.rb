class AddCategoryToHouse < ActiveRecord::Migration[6.0]
  def change
    add_column :houses, :category, :string
  end
end
