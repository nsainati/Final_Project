class CreateFlavorassignments < ActiveRecord::Migration
  def change
    create_table :flavorassignments do |t|
      t.string :bottle_id
      t.string :flavor_id
    end
  end
end
