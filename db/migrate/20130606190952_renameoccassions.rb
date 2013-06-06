class Renameoccassions < ActiveRecord::Migration
  def change
    rename_table :ocassion, :occasions
  end

end
