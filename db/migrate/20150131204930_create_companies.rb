class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :rut
      t.string :address
      t.integer :phone
      t.string :city
      t.string :business

      t.timestamps null: false
    end
  end
end
