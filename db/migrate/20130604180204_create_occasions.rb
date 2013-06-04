class CreateOccasions < ActiveRecord::Migration
    def change
    create_table :ocassion do |t|
    t.column :bottle_id, :integer
    t.column :event_id, :integer
    end
end
