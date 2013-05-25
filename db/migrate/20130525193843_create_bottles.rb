class CreateBottles < ActiveRecord::Migration
  def change
    create_table :bottles do |t|
      t.string :name
      t.integer :year
      t.string :color
    end
  end
end
