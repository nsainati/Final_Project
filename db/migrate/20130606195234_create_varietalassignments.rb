class CreateVarietalassignments < ActiveRecord::Migration
  def change
    create_table :varietalassignments do |t|
      t.integer :bottle_id
      t.integer :varietal_id
    end
  end
end
