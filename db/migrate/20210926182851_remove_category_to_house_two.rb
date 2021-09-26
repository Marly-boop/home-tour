class RemoveCategoryToHouseTwo < ActiveRecord::Migration[6.0]
  def change
    remove_column :houses, :category_id
  end
end
