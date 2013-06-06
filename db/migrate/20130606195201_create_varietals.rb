class CreateVarietals < ActiveRecord::Migration
  def change
    create_table :varietals do |t|
      t.string :name
    end
  end
end
