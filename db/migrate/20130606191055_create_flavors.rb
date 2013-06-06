class CreateFlavors < ActiveRecord::Migration
  def change
    create_table :flavors do |t|
      t.string :name
    end
  end
end
