class Changebottlepicturecolumn < ActiveRecord::Migration
  def change
    remove_column :bottles, :picture_id
    add_column :bottles, :picture_source, :string
  end

end
