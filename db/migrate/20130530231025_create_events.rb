class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event
    end
  end
end
