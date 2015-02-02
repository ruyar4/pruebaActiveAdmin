class CreateInstalations < ActiveRecord::Migration
  def change
    create_table :instalations do |t|
      t.boolean :instaled
      t.date :date_install
      t.boolean :calibrated

      t.timestamps null: false
    end
  end
end
