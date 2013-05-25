class CreateBootstraps < ActiveRecord::Migration
  def change
    create_table :bootstraps do |t|
      t.string :cosmo

      t.timestamps
    end
  end
end
