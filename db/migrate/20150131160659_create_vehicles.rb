class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :name
      t.string :patent
      t.integer :cod_vehicle
      t.string :brand
      t.string :category
      t.string :type
      t.string :model

      t.timestamps null: false
    end
  end
end
