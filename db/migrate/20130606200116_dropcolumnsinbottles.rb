class Dropcolumnsinbottles < ActiveRecord::Migration
  def change
    remove_column :bottles, :varietals
    remove_column :bottles, :flavors
    remove_column :bottles, :occasion
     add_column :bottles, :brand_id, :integer
   end

  def down
  end
end
