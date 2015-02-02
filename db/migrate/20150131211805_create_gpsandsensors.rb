class CreateGpsandsensors < ActiveRecord::Migration
  def change
    create_table :gpsandsensors do |t|
      t.string :model
      t.string :brand
      t.integer :n_comb
      t.integer :c_comb
      t.string :mar_comb
      t.string :mod_comb

      t.timestamps null: false
    end
  end
end
