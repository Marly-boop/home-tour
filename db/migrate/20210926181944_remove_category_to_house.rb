class RemoveCategoryToHouse < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key :houses, column: :category_id
  end
end
