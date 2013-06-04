class CreateBottlesEventsTable < ActiveRecord::Migration
  def change
  	create_table :bottles_events do |t|
  	t.integer :bottle_id
  	t.integer :event_id
  	end
  end

end
