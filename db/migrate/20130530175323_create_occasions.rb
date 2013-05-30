class CreateOccasions < ActiveRecord::Migration
  def change
    create_table :occasions do |t|
      t.integer :foreign_id
      t.string :occasion
      t.string :qualities
    end
  end
end
