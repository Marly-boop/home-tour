class CreateVans < ActiveRecord::Migration[6.0]
  def change
    create_table :vans do |t|
      t.text :description
      t.string :lien

      t.timestamps
    end
  end
end
