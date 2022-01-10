class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.text :description
      t.string :link
      t.string :title

      t.timestamps
    end
  end
end
