class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string :name
      t.integer :year
      t.string :color
      t.string :varietal
      t.string :appellation
      t.string :style
      t.string :flavors
      t.float :alcohol
      t.integer :production
      t.float :price
      t.integer :picture_id
      t.string :occasion
      t.text :description

    end
  end
end
